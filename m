Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8pQx-0000wm-UR
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 09:28:36 +0000
Date: Tue, 4 Sep 2012 11:28:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904092831.GV26594@pengutronix.de>
References: <1346227318.3280.1.camel@lws-weitzel>
 <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
 <20120829122125.GF18708@game.jcrosoft.org>
 <1346744062.4672.3.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346744062.4672.3.camel@lws-weitzel>
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
Subject: Re: [PATCH v3] xload: get barebox size from barebox_arm_head
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 04, 2012 at 09:34:22AM +0200, Jan Weitzel wrote:
> Am Mittwoch, den 29.08.2012, 14:21 +0200 schrieb Jean-Christophe
> > > +unsigned int get_image_size(void *head)
> > > +{
> > > +	unsigned int ret = 0;
> > > +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> > > +	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
> > > +
> > > +	if (!strcmp(pmagic, "barebox"))
> > > +		ret = *psize;
> > > +	debug("Detected barebox image size %u\n", ret);
> > factorise the code with filetype
> What exactly do you mean? I could factorise it by boot source (mmc / nand) with complete omap_xload_boot_nand.

He means that you should use file_detect_type() To detect whether it's a
barebox image.
I'm unsure I share this opinion. After detecting that it's a barebox
file you have to look into the header anyway to get the actual size.

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
