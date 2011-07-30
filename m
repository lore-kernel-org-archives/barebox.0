Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn8ea-0003Xg-GY
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 12:28:30 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id DE026FFA32B
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 14:29:18 +0200 (CEST)
Date: Sat, 30 Jul 2011 14:10:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110730121043.GJ25658@game.jcrosoft.org>
References: <1312004257-7009-1-git-send-email-plagnioj@jcrosoft.com>
	<CAA4bVAHVAbNCHcXY7_3Pp1hHZNRdh7rv7p5AHs7V4yUUnaP6+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHVAbNCHcXY7_3Pp1hHZNRdh7rv7p5AHs7V4yUUnaP6+w@mail.gmail.com>
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
Subject: Re: [PATCH] ns16550: switch to resource
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 16:07 Sat 30 Jul     , Antony Pavlov wrote:
> On 30/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > +static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
> > +{
> > +	struct device_d *dev = cdev->dev;
> > +	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
> > +	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> > +	
> > +	off <<= plat->shift;
> > +
> > +	if (plat->reg_read)
> > +		return plat->reg_read((unsigned long)dev->priv, off);
> >
> 
> So, this code __always__ make swap before calling platform-dependent
> reg_read (if any).
> And platform-dependent reg_read must assume the presence of the shift.
> 
> I propose this variant:
> ---------------------------
> if (plat->reg_read)
> 	return plat->reg_read((unsigned long)dev->priv, off);
> 
> off <<= plat->shift;
the idea is avoid duplicated code in reg_read

if you do not want the shift you let shift at 0


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
