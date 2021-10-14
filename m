Delivery-date: Thu, 14 Oct 2021 14:11:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mazZp-0002Gf-I9
	for lore@lore.pengutronix.de; Thu, 14 Oct 2021 14:11:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mazZo-0001kQ-9l
	for lore@pengutronix.de; Thu, 14 Oct 2021 14:11:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXJmIzrZURwa+pkXs88O53/cyEATNUpWojpNqExfvvc=; b=eboOnuZMpvwIEl
	XjT1PNgbymKvPb/DFlk73DY3Tw6fjEG0Q6V08RqFl02JEcmugK4aPbkU3Ic0IRWK10V7GFnyjSqWI
	Ac8WVSE3dVvew+AOkPLYMGsk05xWGdiN0pKzICmnKbmSv7jKTIqN/mL4qbZcXwFNnoSEKdSYsXWS4
	ac3EjaXpCaKLcx+mrYjiwzQVZC5qtZo76BeZl/IKxKGrPNcaIo315DGEKeQd9Dlu2/+fV91D2QhJ+
	xzvLQAFNi7gIYp+thMoJJ0OKbCE1ytQLPC/ExxmhaYZyn1K+4i6NFvxgy/XiTTqfAbGynwSwljFkL
	q0Fm2c8KXywtHRLVqZ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mazYO-0031gK-CF; Thu, 14 Oct 2021 12:09:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mazYG-0031el-63
 for barebox@lists.infradead.org; Thu, 14 Oct 2021 12:09:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mazYE-0001FQ-Rw; Thu, 14 Oct 2021 14:09:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mazYE-0007xD-7x; Thu, 14 Oct 2021 14:09:34 +0200
Date: Thu, 14 Oct 2021 14:09:34 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, Yunus Bas <Y.Bas@phytec.de>
Message-ID: <20211014120934.GC25698@pengutronix.de>
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
 <20211012015359.933464-3-trent.piepho@igorinstitute.com>
 <20211012082135.GN28453@pengutronix.de>
 <CAMHeXxO04HMwZ1nbFtm3n=SzaMD9ERBEgXXK-XyOdVvqju2DUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxO04HMwZ1nbFtm3n=SzaMD9ERBEgXXK-XyOdVvqju2DUg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:58:41 up 238 days, 15:22, 145 users,  load average: 0.15, 0.26,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_050936_288789_385C296E 
X-CRM114-Status: GOOD (  46.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] imx-bbu-nand-fcb: Add command to help debug FCB issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 03:14:01AM -0700, Trent Piepho wrote:
> On Tue, Oct 12, 2021 at 1:21 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > On Mon, Oct 11, 2021 at 06:53:59PM -0700, Trent Piepho wrote:
> > > Add new "fcb" command.  It can save a decoded copy of the FCB to a file,
> > > do a hexdump of the decoded FCB, or display the FCB fields.  Or simply
> > > read and validate the FCB.
> 
> > Not sure if we need to control this command in such a fine grained way.
> > For me just extracting all possible FCBs including the firmware images,
> > maybe printing consistency information would be enough. That's just a
> > personal opinion though, feel free to override it.
> 
> Originally I was having issues creating correct FCBs, mostly due to
> kobs-ng (I wonder how hard it would be to port barebox_update to
> Linux?) and wanted to extract factory FCB and kobs-ng generated FCB.
> But copying data from Barebox to Linux and looking at hexdumps was
> very tedious.  Really, one wants to see fields of FCB decoded and
> Barebox already had code that did this.
> 
> So the -i flag that prints out FCB fields and -o to save a copy were
> what I wrote originally as debug aid, with -i the most useful to me.
> I don't actually want to extract firmware images.  It was the FCB that
> was the issue.  I didn't think it would be useful enough to other
> people to bother sending it to the list.
> 
> But then later there was a thread from Yunas at Phytec about the
> difficulty of doing a flash crc check on NAND when one does not know
> where data will be due to possible bad blocks.  Extracting this
> information from the FCB seemed like the correct way to do it and I
> realized it would be easy to add into the command I had written.  So
> that is why this feature is there.  And this was evidence that this
> would be useful to someone besides myself.
> 
> I added hexdump because it seemed like someone might like it and it
> was one line.  I could drop this part.
> 
> Extracting all possible FCBs has issues.  Number and location of FCBs
> varies.  Pin strapping and possibly OTP memory fuses control what the
> boot ROM does.  However, the boot ROM's search, what is actually in
> flash, and what kobs-ng wants to write, can all be different.  I did
> write this debug aid for a real problem!
> 
> If it did just write dump everything, then how would it work?  Some
> details are not clear to me.
> 
> Where does the data go?  Assume /tmp?  Or argument to supply directory name?
> It will need multiple files.  How to name?  Arguments for each
> filename?  Seems too many arguments.  Or have a fixed filename
> pattern?  FCB1, FCB2, firmware1.img, firmware2.img, etc.  Not really a
> huge fan of hardcoded filenames.

Either way would be fine with me. I would use the current directory for
writing files with hardcoded filenames.

> What happens if the FCBs are not where Barebox thinks they are?  This
> really does happen.
> What if all the FCBs do not agree on the location/size of the firmware images?

I would write out all found FCBs by default. Additionally an option to
pass the block number of which FCB should be used like you already did
it.

Generally I think when by default all possible information is extracted
including the FCB/Firmware images, maybe sha256sums of the firmware
imags. That way we could easily add more information if we get new
ideas which infos might be useful additionally. With dedicated options
for each and every piece of information it will become difficult to
parse and hard to track which option is compatible/useful with which
other option. In the end this mostly useful for debugging anyway. I
don't think we should extend this command to do anything useful in a
production case.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

