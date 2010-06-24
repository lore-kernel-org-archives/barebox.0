Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003M6-4N
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:01 +0200
Message-Id: <1277372108-30332-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] tftp: remove unused variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/tftp.c |    9 +--------
 1 files changed, 1 insertions(+), 8 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 38d16bc..338359b 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -35,8 +35,6 @@
 static int		tftp_server_port;	/* The UDP port at their end		*/
 static unsigned int	tftp_block;		/* packet sequence number		*/
 static unsigned int	tftp_last_block;	/* last packet sequence number received */
-static unsigned int	tftp_block_wrap;	/* count of sequence number wraparounds */
-static unsigned int	tftp_block_wrap_offset;	/* memory offset due to wrapping	*/
 static int		tftp_state;
 static uint64_t		tftp_timer_start;
 static int		tftp_err;
@@ -135,10 +133,7 @@ static void tftp_handler(char *packet, unsigned len)
 		 * number of 0 this means that there was a wrap
 		 * around of the (16 bit) counter.
 		 */
-		if (tftp_block == 0) {
-			tftp_block_wrap++;
-			tftp_block_wrap_offset += TFTP_BLOCK_SIZE * TFTP_SEQUENCE_SIZE;
-		} else {
+		if (tftp_block) {
 			if (((tftp_block - 1) % 10) == 0) {
 				putchar('#');
 			} else if ((tftp_block % (10 * HASHES_PER_LINE)) == 0) {
@@ -155,8 +150,6 @@ static void tftp_handler(char *packet, unsigned len)
 			tftp_con->udp->uh_dport = udp->uh_sport;
 			tftp_server_port = ntohs(udp->uh_sport);
 			tftp_last_block = 0;
-			tftp_block_wrap = 0;
-			tftp_block_wrap_offset = 0;
 
 			if (tftp_block != 1) {	/* Assertion */
 				printf("error: First block is not block 1 (%ld)\n",
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
