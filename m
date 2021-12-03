Delivery-date: Fri, 03 Dec 2021 18:54:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtCl0-0000ZE-Q7
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 18:54:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtCkz-00078I-Q9
	for lore@pengutronix.de; Fri, 03 Dec 2021 18:54:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXdqnR9tjAYNqxrd74v4+jA6QolWejbunh6/fgBALGA=; b=aHdU47kj51YTtg
	sUflk789n50bwsY9OS+jjFbja1A4KL/w/uanppdrOAL6P9wf3/MSL1j3YxNnZbAwsZMmS2vG3zZeN
	HRsriMr1UgXkghAQ/ILc2QpQ1+VWuUMoq8NnNUTejUp3WHWsB+PY8m+RMgeNAjNTWuSEFBR3No+SL
	kkQkRaVjFwYjsBy54IZIMi5oCHSKYQMWmtZ4DgFaqhya8WH/4ewlUapJ/BVZc0zievk+8EFz2bgD6
	gfLnwDPdZ1JZatFhsZgAH+KtCd4giU/alp2UIDQPprjiHrDapLXlvDRJYRM9HsZndRlefAxpwkDOZ
	Ik2SfuffqvnOIFbbOgew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtCjM-00GiIW-Uz; Fri, 03 Dec 2021 17:52:21 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtCjH-00GiHU-LG
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 17:52:17 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bi37so8362500lfb.5
 for <barebox@lists.infradead.org>; Fri, 03 Dec 2021 09:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Gb2nRSaEdcHXxavlrGnlvLnwHdDKfzxv9L4q7RvSjw=;
 b=7kctROK0nMQY4Y0KW7ndpvQqPoRiTj1fWe72R1xSeqw8/6ySf+6i7w9Wfv9g/VpTMH
 iEODiDnabxO+kGJKJs33gA+bMAIyRPw288NNMYc1Bm4J9gLp1IO3r2CWPspLjZPA2ajt
 y4hRRrg3wzNcB4TDe+leZxYZ3Vz+QiO6jzq4UY6qwBNJ3gG+ukZs7BGwHi4jwLuVLBd+
 uq9MSe24RRSY2NGV/N5q7dkXVabNyvMnqJIAPG7YwQis9oXfUjsZxO+VC6NLBrW13cwY
 yTVL5S4LEUhvXabqQ7ElQynLzwcOwDaJkp4X7lKXwnEEG81ngysXunPJ9k7IAbVx/xbJ
 +JHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Gb2nRSaEdcHXxavlrGnlvLnwHdDKfzxv9L4q7RvSjw=;
 b=5J/Kqmb9NLpJvYueerHkYCGh/GV1p2uxGNkpCGAIFmySGChw3X1mvtWuHXtLSxr8cB
 aHREdUf2FKa8Yuc7HLwcLBOKymjE5DcI0EWwzPw6V6DNWGKIFSYTbbWIagoPDUGk0CvG
 AuNxEjQKB5Vtr+bxgTrHKuir7Wr51tzkEGFu7uiz4eiIi8KifB7MnbllPDCvjtsQAX19
 aQ7KkjDZ+/xzqoBoRVl1ieOQpd7RoAPbvuH8/hUJQb+XHzFnknB4+WV5hvmdbnb2eelJ
 ogeKOiihvoxM0VILbUigtRI5f3JxWfkz+YMTtMCprGU5zQmDTCkItoOGYsQy5Fb2iqIz
 oUPg==
X-Gm-Message-State: AOAM530WIMAN8Yyde992Du1xNRD2sCV+0TMFsdId95Wme7cyCIdtC1tG
 icjy8XZYpQmO/aquOllhL431xhwxZLwgP5TCmTsrkjhTR0mybg==
X-Google-Smtp-Source: ABdhPJw9ZYhTIs0LZy1Kp1o1OqP0V3p/Um+byxTfYIQj3nHda75JD2fN3s4JoZN1NCq+O2sJ7Nq9sRnxLl1IYm2m8RI=
X-Received: by 2002:ac2:4c4d:: with SMTP id o13mr18749993lfk.196.1638553931267; 
 Fri, 03 Dec 2021 09:52:11 -0800 (PST)
MIME-Version: 1.0
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
In-Reply-To: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Fri, 3 Dec 2021 09:52:00 -0800
Message-ID: <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_095215_849953_BEDE7078 
X-CRM114-Status: GOOD (  21.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 3, 2021 at 4:42 AM Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
> The documentation looks very good and comprehensive overall but may be
> its me not getting
> the part how and where the shared data is properly stored.

You should add a node of "barebox,state" to the *Barebox* device tree.
Barebox needs to read state when it boots to determine the partition
to use and set boot attempts.  You also need in aliases { state =
&your_state_node: }: so it knows which state node it should use.

If you want to use state from Linux too, and of course you do so that
you can run rauc commands and update boot success in Linux, then you
must have state node ALSO in the Linux device tree.  But you do not
need to add it manually!  Barebox will automatically inject the state
node into the Linux device tree when it boots the kernel.

For this to work, you need to have Barebox give the kernel the Linux
device tree when booting.  This is the normal way to boot now.  All
current docs tell you to do this.  There was a much older style where
the dtb was appended to the kernel image and the kernel found it
itself without involving the bootloader.  I assume this will not work,
but I think Barebox state did not exist when I last booted a system
this way, so I haven't tried.

>
> When linux is booted rauc complains:
>
> (rauc:396): rauc-WARNING **: 08:32:31.311: Failed getting primary slot:
> Failed getting primary slot: No content to read

Sounds like barebox-state command did not work.

>
> # barebox-state -d
> Neither /aliases/state nor /state found

Yes, not working.  Barebox should put the state node into Linux device
tree.  It should appear under /sys/firmware/devicetree/base.  In
aliases node and also state node.

> I could easily utilize the I2C EEPROM on my Beaglebone Black for this
> but how should this
> look like for barebox and kernel?

Yes you can use your EEPROM to store state and use rauc.  One could
write code that uses one byte to indicate partition to boot and one
byte for attempts left.  Then you write some board code in Barebox to
read these bytes and set variables bootchooser will use.  There is a
script you write that rauc will run in Linux, it should read EEPROM
and return what it means to rauc.  I have done this to use a few bytes
of NVRAM in RTC chip for boot state information.

I think also one could use Barebox state to store data into an EEPROM.
Normally state is stored into a file, partition in eMMC/SD, or NAND
flash.  But I think EEPROM or a partition in an EEPROM would work too.
Haven't tried it myself though.

If you write custom code to store your information, you can easily
pack everything bootchooser and rauc *need* into just one byte.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

