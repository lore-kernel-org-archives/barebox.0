Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8sRa-00088L-10
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 12:41:27 +0000
Message-ID: <1346761644.6779.0.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Tue, 04 Sep 2012 14:27:24 +0200
In-Reply-To: <20120904092831.GV26594@pengutronix.de>
References: <1346227318.3280.1.camel@lws-weitzel>
 <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
 <20120829122125.GF18708@game.jcrosoft.org>
 <1346744062.4672.3.camel@lws-weitzel>
 <20120904092831.GV26594@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 04.09.2012, 11:28 +0200 schrieb Sascha Hauer:
> On Tue, Sep 04, 2012 at 09:34:22AM +0200, Jan Weitzel wrote:
> > Am Mittwoch, den 29.08.2012, 14:21 +0200 schrieb Jean-Christophe
> > > > +unsigned int get_image_size(void *head)
> > > > +{
> > > > +	unsigned int ret = 0;
> > > > +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> > > > +	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
> > > > +
> > > > +	if (!strcmp(pmagic, "barebox"))
> > > > +		ret = *psize;
> > > > +	debug("Detected barebox image size %u\n", ret);
> > > factorise the code with filetype
> > What exactly do you mean? I could factorise it by boot source (mmc / nand) with complete omap_xload_boot_nand.
> 
> He means that you should use file_detect_type() To detect whether it's a
> barebox image.
> I'm unsure I share this opinion. After detecting that it's a barebox
> file you have to look into the header anyway to get the actual size.
I wasn't aware of this function. I would like to avoid adding
CONFIG_FILETYPE to MLO config.
Jan
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
