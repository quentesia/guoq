package qoptimizer;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class ThreadUtils {
    public static final ExecutorService service = Executors.newCachedThreadPool();

    public static <T> Future<T> submit(Callable<T> task) {
        return service.submit(task);
    }

    public static Future<?> submit(Runnable task) {
        return service.submit(task);
    }

    public static void shutdown() {
        service.shutdown();
    }
}