Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhuVS-0002S9-2D
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 07:11:50 +0000
Date: Fri, 2 Oct 2015 09:11:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151002071127.GO7858@pengutronix.de>
References: <20151001060447.GG7858@pengutronix.de>
 <1443740919-6341-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443740919-6341-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/2] second version for "be more flexible when searching
 for second stage"
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 02, 2015 at 12:08:37AM +0100, Vicente Bergas wrote:
> Hello,
> as suggested I've improved the filesystem-type detection, but, as am not
> familiar with barebox internals was fumbling a bit and the resulting
> cdev_detect_type is a version of file_name_detect_type.
> 
> During testing it autodetected MBR+FAT and MBR+EXT4 correctly.

Applied, thanks

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
