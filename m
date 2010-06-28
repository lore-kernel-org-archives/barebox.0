Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OT9BL-0003jc-Ox
	for barebox@lists.infradead.org; Mon, 28 Jun 2010 07:55:09 +0000
Date: Mon, 28 Jun 2010 09:55:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100628075500.GG12115@pengutronix.de>
References: <ed04cb68b50f6426c0f154e489cf6436877e4b7a.1277385845.git.baruch@tkos.co.il>
	<20100624155907.GD12115@pengutronix.de>
	<20100627051445.GA26474@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100627051445.GA26474@jasper.tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH net-pu] tftp: fix get
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Sun, Jun 27, 2010 at 08:14:46AM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Thu, Jun 24, 2010 at 05:59:07PM +0200, Sascha Hauer wrote:
> > On Thu, Jun 24, 2010 at 04:26:16PM +0300, Baruch Siach wrote:
> > > With this patch tftp start requesting block 0 instead of 1. This fixes
> > > tftp get on i.MX25 based board with tftpd-hpa server.
> > 
> > This is strange. In case of tftp get this variable is not used for
> > sending packets. We do not request blocks with a certain number, we only
> > request a file and ack incoming packets. If you look at 'case TFTP_DATA'
> > in tftp_handler(), you'll see tftp_block getting overwritten by the
> > block number of the incoming packet.
> 
> The code that sends the first acknowledgement (in my case, i.e. tftpd-hpa) is 
> at 'case STATE_OACK', in response to the "Option Acknowledgement" of the 
> 'timeout=5' option. This code does not initialize tftp_block.

How about the following. This works for me with the hpa server in get
and push mode.


diff --git a/net/tftp.c b/net/tftp.c
index c0d3278..4b74dca 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -185,10 +185,21 @@ static void tftp_handler(char *packet, unsigned len)
 
 	case TFTP_OACK:
 		debug("Got OACK: %s %s\n", pkt, pkt + strlen(pkt) + 1);
-		tftp_state = STATE_OACK;
 		tftp_server_port = ntohs(udp->uh_sport);
 		tftp_con->udp->uh_dport = udp->uh_sport;
-		tftp_send(); /* Send ACK */
+
+		if (tftp_put) {
+			/* send first block */
+			tftp_state = STATE_WDATA;
+			tftp_block = 1;
+		} else {
+			/* send ACK */
+			tftp_state = STATE_OACK;
+			tftp_block = 0;
+		}
+
+		tftp_send();
+
 		break;
 	case TFTP_DATA:
 		if (len < 2)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
