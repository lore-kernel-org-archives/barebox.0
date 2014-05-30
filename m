Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIta-0003Qd-9c
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:14:38 +0000
Received: by mail-la0-f41.google.com with SMTP id e16so863767lan.28
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:14:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 30 May 2014 13:14:08 +0400
Message-Id: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] net: picoping: try to make it asynchronious: fail
To: barebox@lists.infradead.org
Cc: Daniele Lacamera <daniele.lacamera@tass.be>

Picotcp tends to work in an asynchronious way.

E.g. for ping we have to use "pico_icmp4_ping()"
(to start ping task) and the special icmp4 handler
(callback function) "cb_ping()".

But the ping command in barebox works in very simple
way:

  * user types 'ping <IP>' in the barebox shell command line;
  * the ping command takes all control until it gets the positive
    or a negative result;
  * the control is returned to the barebox shell.

To use asynchronious-oriented picotcp functions in syncronious-oriented
barebox workflow we have to work out necessary picotcp usage template.

This patch propose simplest template. But this template has two major
disadvantages:

  * user can't completely cancel ping using ctrl-c,
    the ping request send task continue to work in the background:

    barebox@barebox sandbox:/ picoping 10.0.0.2
    48 bytes from 10.0.0.2: icmp_req=1 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=2 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=3 ttl=64 time=0 ms
    <ctrl-c> pressed
    barebox@barebox sandbox:/ picoping 10.0.0.2
    48 bytes from 10.0.0.2: icmp_req=1 ttl=64 time=1 ms
    48 bytes from 10.0.0.2: icmp_req=5 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=2 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=6 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=3 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=7 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=4 ttl=64 time=0 ms
    48 bytes from 10.0.0.2: icmp_req=8 ttl=64 time=0 ms

  * user has to press <ctrl-c> after the last ping response is received
    to return to barebox shell.

Has anybody any ideas how to improve the situation?
---
 net/test_picotcp.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/net/test_picotcp.c b/net/test_picotcp.c
index 5f7138e..035ef09 100644
--- a/net/test_picotcp.c
+++ b/net/test_picotcp.c
@@ -98,9 +98,15 @@ BAREBOX_CMD_START(test_picotcp)
 BAREBOX_CMD_END
 
 #include <pico_icmp4.h>
+#include <poller.h>
 
 #define NUM_PING 10
 
+#define PING_STATE_WORK		0
+#define PING_STATE_DONE		1
+
+static int ping_state;
+
 /* callback function for receiving ping reply */
 void cb_ping(struct pico_icmp4_stats *s)
 {
@@ -108,6 +114,10 @@ void cb_ping(struct pico_icmp4_stats *s)
 	int time_sec = 0;
 	int time_msec = 0;
 
+	if (ping_state == PING_STATE_DONE) {
+		return;
+	}
+
 	/* convert ip address from icmp4_stats structure to string */
 	pico_ipv4_to_string(host, s->dst.addr);
 
@@ -132,8 +142,19 @@ static int do_picoping(int argc, char *argv[])
 		return 1;
 	}
 
+	ping_state = PING_STATE_WORK;
+
 	pico_icmp4_ping(argv[1], NUM_PING, 1000, 5000, 48, cb_ping);
 
+	while (ping_state != PING_STATE_DONE) {
+		if (ctrlc()) {
+			ping_state = PING_STATE_DONE;
+			break;
+		}
+		get_time_ns();
+		poller_call();
+	}
+
 	return 0;
 }
 
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
