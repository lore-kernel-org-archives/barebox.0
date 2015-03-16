Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from neo.develer.net ([2.228.72.10])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXXaI-00060e-Fz
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 16:09:43 +0000
Received: from webmail.develer.com (neo.develer.net [IPv6:2001:b02:400:1::10])
 (Authenticated sender: mirko)
 by neo.develer.net (Postfix) with ESMTPSA id 489565E10EA
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 17:09:17 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 16 Mar 2015 17:09:17 +0100
From: mirko <mirko@develer.com>
In-Reply-To: <5506F091.2040009@develer.com>
References: <5506F091.2040009@develer.com>
Message-ID: <cffe106187616d6ba17018ddbf722f69@develer.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: ping: return an error exit code when connection fails
To: barebox@lists.infradead.org

Il 2015-03-16 16:02 Mirko Damiani ha scritto:
> Hi,
> ping command does not always returns 1 as exit code when connection to
> host fails.
> In particular it returns the exit code of the previous run.
> This patch fixes this issue.
> 

Sorry, the same patch with proper tabulation characters.


Signed-off-by: Mirko Damiani <mirko@develer.com>
---
  net/ping.c | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index 2349f4b..4eb77cb 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -67,6 +67,9 @@ static int do_ping(int argc, char *argv[])
  		return 1;
  	}

+	ping_state = PING_STATE_INIT;
+	ping_sequence_number = 0;
+
  	ping_con = net_icmp_new(net_ping_ip, ping_handler, NULL);
  	if (IS_ERR(ping_con)) {
  		ret = PTR_ERR(ping_con);
@@ -78,9 +81,6 @@ static int do_ping(int argc, char *argv[])
  	if (ret)
  		goto out_unreg;

-	ping_state = PING_STATE_INIT;
-	ping_sequence_number = 0;
-
  	while (ping_state == PING_STATE_INIT) {
  		if (ctrlc()) {
  			ret = -EINTR;
-- 
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
