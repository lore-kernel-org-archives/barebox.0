Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCimY-0003ka-Hq
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 06:24:35 +0000
Date: Wed, 8 Jul 2015 08:24:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150708062412.GZ18700@pengutronix.de>
References: <1436165726-33606-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436165726-33606-1-git-send-email-j.remmet@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: am33xx: netboot use ramfs
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Mon, Jul 06, 2015 at 08:55:26AM +0200, Jan Remmet wrote:
> Older tftp server don't send the file size.
> Then tftpfs needs temporary place to store the file.
> mount ramfs and then tftpfs in a own mount point

I don't like this at all. The missing file size has led to a workaround
in read_file and now it additionally leads to a workaround in a user of
read_file. I hoped I could think of something better, but so far I
failed, so: Applied.
Anyway, I'm still open for better solutions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
