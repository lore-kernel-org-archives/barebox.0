Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x233.google.com ([2607:f8b0:400e:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXysy-0000GQ-AK
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:43 +0000
Received: by mail-pf0-x233.google.com with SMTP id b17-v6so171609pfi.0
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:04 -0700
Message-Id: <20180627010412.20646-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 02/10] common: clock: Sample time before poller_call()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change is_timeout() to sample current time before invoking poller
infrascructure to avoid occasional false timeout conditions.

Consider the following timeout loop (can be found in wait_on_timeout):

        while (!(condition)) {
	        if (is_timeout(...)) {
	       	        return -ETIMEDOUT;
                }
        }
	...

in the original logic of is_timeout() it was possible to end up in the
following situation:

        1. Immediate check of of "condition" yeilds false (not enough
           time for it to become true has passed yet)

	2. is_timeout is called which, in turn, calls poller_call()

	3. All registerd pollers take more than specified timeout time
	   to execute.

	4. Sometime during poller_call() "contition" becomes true

	5. As a result of #3 is_timeout() returns "true"

	6. Code bails out with -ETIMEDOUT early even though timeout
	   condition didn't really occur.

One concrete example of this problem was discovered on ZII RDU1
board (poller_call() is long due to a serdev) when doing large data
transfers over SPI to attached DataFlash chip.

This commit changes is_timeout() to sample the value of time before
calling poller_call(). This way first call to is_timeout() will almost
always return false thus checking the condition at least twice before
declaring a timeout.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/clock.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/clock.c b/common/clock.c
index 7f5cff232..2b218fb6a 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -181,10 +181,12 @@ EXPORT_SYMBOL(is_timeout_non_interruptible);
 
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
+	int ret = is_timeout_non_interruptible(start_ns, time_offset_ns);
+
 	if (time_offset_ns >= 100 * USECOND)
 		poller_call();
 
-	return is_timeout_non_interruptible(start_ns, time_offset_ns);
+	return ret;
 }
 EXPORT_SYMBOL(is_timeout);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
