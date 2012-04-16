Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJnv8-0006Cc-Vc
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 15:32:52 +0000
Date: Mon, 16 Apr 2012 17:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120416153241.GS3852@pengutronix.de>
References: <4F8C38ED.6030103@yahoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F8C38ED.6030103@yahoo.fr>
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
Subject: Re: Yaffs2 support in barebox
To: Patrick <kpa_info@yahoo.fr>
Cc: barebox@lists.infradead.org

On Mon, Apr 16, 2012 at 05:21:17PM +0200, Patrick wrote:
> Dear all,
> 
> We are using Yaffs2 on our embedded system. This is used from linux
> for the rootfs.
> It would be really great if we could flash the rootfs directly from
> the bootloader.Do you know if we could add Yaffs2 support to BareBox
> ?

For sure I have nothing against having YAFFS2 support in barebox, but do
you need this to flash your rootfs image? You normally don't need to
support the filesystem you are flashing (as long as you don't want to
access the files in the image)

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
