Delivery-date: Wed, 13 Oct 2021 13:30:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macSx-0003G9-Qg
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 13:30:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macSv-0001mV-RB
	for lore@pengutronix.de; Wed, 13 Oct 2021 13:30:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ6PrSbQ/5Rg88HGcTUmD98GV4D102HB0DIrLB/I2fk=; b=WHaIfF0N/xLFaz
	2zBDXZ1G3lsrTUa82gRYEQN/twZtt+rrRK4vAGkpTnRV8/4xdfaUa/YEbsPZSi6yTaHN5TarK46nL
	HRPYsMUKe+DafzRq4JgmZqrmJjDX7Cb+hcp3LpVRrgAwqZAhOl5/wbcB9n8g8Gc22DkYS0ONEvY/v
	cmSLI1/CzdqqgNAKgytO25hfJCnh/shPZlBbLhw2lRKLyH7kUPXh4sQZ6ee4PCmLlUz6dCgGIREE4
	N7jKF5IWaHXI7mkh1I08tG/1zYaV6CMxdbQtozHEcL2ChgTouq8snyivr49TYARsvRrp0rNuFZ8bO
	XCWvNNZVfh4lFWWG8Y3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1macRI-00GJFL-GI; Wed, 13 Oct 2021 11:28:53 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mabH4-00Fvx0-Dx
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 10:14:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id u21so6297965lff.8
 for <barebox@lists.infradead.org>; Wed, 13 Oct 2021 03:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PRGcRJSFxiBPzFq5X5y8kPKDq9HVlT4ixkMcfSttDRE=;
 b=wduM3Bm8dRmtq8EEoTGMeMW8GkLY1c3IB/Ta3TvQkK3EGqGuyWL28IAuXPRpplFoPF
 IL5tydVb9u6UgobtSJ+9MKi3MVMWU/RrhVcVak2lZsRdF7d6ccPHDRCI4dofFvuKpjUv
 zR6kJktUZLq2XBUV3bh4Ni9jyuAX7KRc7A9DDbGxZvViFoioud78rG6U79LfZNPf2A5T
 /2sEmbncocpSGIbkIW2aRlStursqTI8cTxdtlYU6bZIL95gw/fxdXxYllgq8Y9Zo+nw1
 gLh0hs711qC/yDssr+6ef5fqqbKQ38x2OzQN+sfnf4gcX/POs20R5VUgGPkFGC4wYzRw
 BOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PRGcRJSFxiBPzFq5X5y8kPKDq9HVlT4ixkMcfSttDRE=;
 b=5iYwhZ+K7/95eMua8sDA3t3GBlWebK9uincOT6cloL7Ja11fUAXuRTrtk/5Yf6t3N0
 pWeglgQS+vA8uN8z0vUW0afPZQFU3tIFbv/46evFQSfTIrjYjZsDmLsZ1cW6ckeisK2i
 52sQtYQU85kaRBMlR8T7LAlJCF0hiVAp10NM3sIV+zKEiFV2bX5KYxgOK+AL3FgrJMAv
 F5tdDs7hNGCWc87H5GfxRUFO7IuRBd04sWgAvG2PrvmG5bCTSllbAJFO/pfnJiSqdDzA
 3wTrCPTA6FXJvYGN88BtfqsSAqSQT4fxY6nIl5Sx//JjOO4fToMvYqE4WvscQZj/nwJH
 /oFg==
X-Gm-Message-State: AOAM533IR1ucEg4yTwr7gSgzfOcsqQLEyeF1K4SScwQyxAH8hXRZLhdI
 CGJGDk+p8q1jAgaDLPp10V4NNcTjuqsRPW6hQuX7Hw==
X-Google-Smtp-Source: ABdhPJxMkFNYfotgE1umgyDO2/C+NGlqxdSPCY/Xw5qNWaplma7YJalc6s6wXuI1weNH3xGTKuLvnqAUjwGID/5qNzg=
X-Received: by 2002:a2e:aa93:: with SMTP id
 bj19mr16053625ljb.139.1634120052726; 
 Wed, 13 Oct 2021 03:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
 <20211012015359.933464-3-trent.piepho@igorinstitute.com>
 <20211012082135.GN28453@pengutronix.de>
In-Reply-To: <20211012082135.GN28453@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 13 Oct 2021 03:14:01 -0700
Message-ID: <CAMHeXxO04HMwZ1nbFtm3n=SzaMD9ERBEgXXK-XyOdVvqju2DUg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Yunus Bas <Y.Bas@phytec.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_031414_744084_EF6BA695 
X-CRM114-Status: GOOD (  27.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] imx-bbu-nand-fcb: Add command to help debug FCB issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 12, 2021 at 1:21 AM Sascha Hauer <sha@pengutronix.de> wrote:
> On Mon, Oct 11, 2021 at 06:53:59PM -0700, Trent Piepho wrote:
> > Add new "fcb" command.  It can save a decoded copy of the FCB to a file,
> > do a hexdump of the decoded FCB, or display the FCB fields.  Or simply
> > read and validate the FCB.

> Not sure if we need to control this command in such a fine grained way.
> For me just extracting all possible FCBs including the firmware images,
> maybe printing consistency information would be enough. That's just a
> personal opinion though, feel free to override it.

Originally I was having issues creating correct FCBs, mostly due to
kobs-ng (I wonder how hard it would be to port barebox_update to
Linux?) and wanted to extract factory FCB and kobs-ng generated FCB.
But copying data from Barebox to Linux and looking at hexdumps was
very tedious.  Really, one wants to see fields of FCB decoded and
Barebox already had code that did this.

So the -i flag that prints out FCB fields and -o to save a copy were
what I wrote originally as debug aid, with -i the most useful to me.
I don't actually want to extract firmware images.  It was the FCB that
was the issue.  I didn't think it would be useful enough to other
people to bother sending it to the list.

But then later there was a thread from Yunas at Phytec about the
difficulty of doing a flash crc check on NAND when one does not know
where data will be due to possible bad blocks.  Extracting this
information from the FCB seemed like the correct way to do it and I
realized it would be easy to add into the command I had written.  So
that is why this feature is there.  And this was evidence that this
would be useful to someone besides myself.

I added hexdump because it seemed like someone might like it and it
was one line.  I could drop this part.

Extracting all possible FCBs has issues.  Number and location of FCBs
varies.  Pin strapping and possibly OTP memory fuses control what the
boot ROM does.  However, the boot ROM's search, what is actually in
flash, and what kobs-ng wants to write, can all be different.  I did
write this debug aid for a real problem!

If it did just write dump everything, then how would it work?  Some
details are not clear to me.

Where does the data go?  Assume /tmp?  Or argument to supply directory name?
It will need multiple files.  How to name?  Arguments for each
filename?  Seems too many arguments.  Or have a fixed filename
pattern?  FCB1, FCB2, firmware1.img, firmware2.img, etc.  Not really a
huge fan of hardcoded filenames.
What happens if the FCBs are not where Barebox thinks they are?  This
really does happen.
What if all the FCBs do not agree on the location/size of the firmware images?
Is it possible extra space used to dump firmware copies into /tmp,
then crc the copies matters vs doing it in place from flash?
What if someone wants to script something with firmware images other
than a checksum?  E.g., they want to erase firmware1 to test that
fallback to firmware2 works.  Or want to know how large the firmware
is.  I do not know of a way to get the size of a file in hush.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

