Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5HuF-0002Q6-5i
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 12:55:08 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 14:53:22 +0200
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
	<1286796505-16049-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-12-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111453.22164.jbe@pengutronix.de>
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
Subject: Re: [PATCH 11/17] mci: handle SD cards < 2.0 correctly
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> With SD cards older than 2.0 the sd_send_if_cond() fails. Do
> not assume it's an MMC card in this case. Instead, assume
> it's a MMC card if sd_send_op_cond() fails.

With your patch you can add this one also:

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f961e46..bf060b5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -45,7 +45,7 @@
  * @brief Memory Card framework
  *
  * Checked with the following cards:
- * - old Canon SD 16 MiB, does not like the 0x08 command (SD_CMD_SEND_IF_COND) -> failed
+ * - Canon MMC 16 MiB
  * - Kingston 512 MiB
  * - SanDisk 512 MiB
  * - Transcend SD Ultra, 1 GiB (Industrial)

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
