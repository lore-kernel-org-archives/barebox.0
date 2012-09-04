Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8uJc-0002fQ-Rh
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 14:41:22 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7D6B0DC0EC6
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 16:46:36 +0200 (CEST)
Date: Tue, 4 Sep 2012 16:41:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120904143553.GA32603@game.jcrosoft.org>
References: <1346227318.3280.1.camel@lws-weitzel>
 <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
 <20120829122125.GF18708@game.jcrosoft.org>
 <1346744062.4672.3.camel@lws-weitzel>
 <20120904092831.GV26594@pengutronix.de>
 <1346761644.6779.0.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346761644.6779.0.camel@lws-weitzel>
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

On 14:27 Tue 04 Sep     , Jan Weitzel wrote:
> Am Dienstag, den 04.09.2012, 11:28 +0200 schrieb Sascha Hauer:
> > On Tue, Sep 04, 2012 at 09:34:22AM +0200, Jan Weitzel wrote:
> > > Am Mittwoch, den 29.08.2012, 14:21 +0200 schrieb Jean-Christophe
> > > > > +unsigned int get_image_size(void *head)
> > > > > +{
> > > > > +	unsigned int ret = 0;
> > > > > +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> > > > > +	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
> > > > > +
> > > > > +	if (!strcmp(pmagic, "barebox"))
> > > > > +		ret = *psize;
> > > > > +	debug("Detected barebox image size %u\n", ret);
> > > > factorise the code with filetype
> > > What exactly do you mean? I could factorise it by boot source (mmc / nand) with complete omap_xload_boot_nand.
> > 
> > He means that you should use file_detect_type() To detect whether it's a
> > barebox image.
> > I'm unsure I share this opinion. After detecting that it's a barebox
> > file you have to look into the header anyway to get the actual size.
> I wasn't aware of this function. I would like to avoid adding
> CONFIG_FILETYPE to MLO config.

so factorize the detection of the barebox-arm in a header share by both

duplication of the code NACK

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
