Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGm3-0004pM-KB
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 13:34:05 +0000
Date: Wed, 23 Oct 2019 15:33:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191023133357.wlqjrz4wr4uvmn73@pengutronix.de>
References: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
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
Subject: Re: flash barebox to NAND
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 23, 2019 at 11:39:00AM +0200, Mihaita Ivascu wrote:
> Hello all,
> 
>   I would like to know what possibilities do I have to flash a barebox
> image to mtd partition from Linux?
>  Using ubifs commands does not work. the barebox will not boot so
> probably additional info needs to be written except the barebox image
> itself.

On i.MX a bootloader image can't be written to Nand directly. In barebox
you can update barebox with the barebox_update command which has support
for the special image format requirements of the i.MX6. I currently
don't know any userspace code that can do this, apart from mfgtools or
other tools from the NXP universe that I have never used. Somebody told
me he wanted to port the i.MX6 barebox update code to userspace, but
unfortunately I can't remember who it was and I can't find any pointers
to it.

Regards,
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
