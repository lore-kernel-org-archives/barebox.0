Delivery-date: Tue, 16 Jul 2024 11:17:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTeJE-005OjP-28
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 11:17:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTeJD-0006UA-U0
	for lore@pengutronix.de; Tue, 16 Jul 2024 11:17:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GZ2jPlNAm2ONX+mr472sZWwnWPOhO4fI1/oRrzh91pE=; b=g0H581P+SUUk/PpPgbl+8MliR0
	/T8IQP6hvx8N2dISn78DnuRF5syxb7I9GHkLPuBm93SPiHkXj1NvXqrvKkkbDrnc7RDtaAb0XbgRx
	R97rShJeiNlkUFCf/NUhXZ71F2TqZixyPQeqBofbKcvS1oXr4uQrWILgBKRBF86L0V8UXXlGJO56l
	sr5Bz27m7yQElFqDXw6lt3qSd5BIGaY4LGJb5Ygp5b5TQkROhrqWyvJCSRG6Sb63s6kGn6/U4unJO
	EyQO9PARq4mxfzPHF9okxG68G8nqAf0xDNIDYipqbrl/taynyNFlav/1QfZbiE2o/RpRnsiTqsvUY
	2NVd1ZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTeIZ-00000009qaY-02NH;
	Tue, 16 Jul 2024 09:16:39 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTeIV-00000009qZw-1Uui
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 09:16:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4266182a9d7so33445605e9.0
        for <barebox@lists.infradead.org>; Tue, 16 Jul 2024 02:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1721121392; x=1721726192; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GZ2jPlNAm2ONX+mr472sZWwnWPOhO4fI1/oRrzh91pE=;
        b=Bov7UQs44sdnKEglHl9mC1bkiMv1guPCW2EiCN5rJL749iJ5ty0N77oQvNzxoPhKBr
         n1Mpim3NR9y97ir00T6Jvq/Y6+G5U0+DaEG6u2OTGRZNNfyM/7UCIDvXouRImIxifssi
         D8WhaNakuwtjAI6ggOXUid6XaVSQiGceW2OGuYOJ2aS7IzjdY5uVtQhOxuj/YUK7NXgL
         GpWi/BZVLKG8S/HYwbxFtgJbEFLr6ENaERUchbSPWXVdPBqPZfFLfv+ueAwyvZzDlWFN
         62U04g8CVNHuUFXaqprP+t1vZ24tmQ5tALDWcEQCVaRA5Ze1LIYWVx+lgy9ntZSFarRi
         fCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721121392; x=1721726192;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GZ2jPlNAm2ONX+mr472sZWwnWPOhO4fI1/oRrzh91pE=;
        b=CNcj7bDyrzJmiQAf3rOqCVMhBEqo14kQ/5NKb3lfpwiXVlGuILEfDuUDb4tNfcjh/t
         VKPQki2u0D+EFvdBymurmFh4UfW1YPzwdcDhqhsSWU2e8mg+GJ+H2HaGHGYLy1oXhQyO
         WfR212hqL+3ffmm+zTF2MXmLO13r1x9aCsbJXZQK1YkWHge+Eo+fp38Wr99gontpx+JX
         aWs5Om3lpx2ZPxo8vBt9f3+zZicuC1kpDg3i+df/w8TacwheODwjfW6/Ur1PRvkP/XCR
         bZY+u+ILIqbRvUFm5lZQ/arV5pInbehBe6KAXFn6OiBAou2oUjsYn/U+LouXKZHUNajC
         Jhfg==
X-Forwarded-Encrypted: i=1; AJvYcCX/cba2reNSaWm2qrrfyY7VDSa3gKuBFic5iz/rkQOFGiWzZLpGGe64JPklJxJTp/Qn8Z0IkF6IBz9q7kllGyTxJm1c5mEoTcF2IFs=
X-Gm-Message-State: AOJu0YxVOsq915r0Ik8RTkdv7rDsnylzYpPOIgQSR1Ta0AkJnf3Q5hTW
	KDY+u5cnS+Jj5VIE48EzftQEHx7eC3kBigKZv94OlgvSuRpmbC9oMpEZ5fQDdKATAd+ThDvrXM8
	J
X-Google-Smtp-Source: AGHT+IGHRJv3athRiei8PV950ta6PNvBvRJRqfgdVPxHa5hveXXcuQYO68NRjfUTW9facCgmaSIU5g==
X-Received: by 2002:a05:600c:1383:b0:426:67ad:38e3 with SMTP id 5b1f17b1804b1-427ba654c0cmr10932495e9.3.1721121391758;
        Tue, 16 Jul 2024 02:16:31 -0700 (PDT)
Received: from blindfold.localnet ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f23cc5bsm149625925e9.2.2024.07.16.02.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 02:16:30 -0700 (PDT)
From: Richard Weinberger <richard@sigma-star.at>
To: u-boot@lists.denx.de
Date: Tue, 16 Jul 2024 11:16:27 +0200
Message-ID: <2561107.TLnPLrj5Ze@somecomputer>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_021635_725970_6A7C5AA9 
X-CRM114-Status: GOOD (  14.41  )
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
Cc: trini@konsulko.com, barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Various Integer Overflows in dlmalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi!

While inspecting various security aspects of U-Boot I noticed some
issues around dlmalloc and asking for your feedback, especially for the
first issue.
I'm CC'ing Barebox folks since Barebox seems to be based on the same
dlmalloc-implementation as U-Boot does.

1. Integer Overflow While Computing Allocation Size

malloc/realloc/memalign take an arbitrary request size and apply
padding.

=46irst, the length is (imperfectly) checked and the the conversion happens:

  if ((long)bytes < 0) return NULL;

  nb =3D request2size(bytes);  /* padded request size; */

The problem is that the request2size() macro is casting the requested
size to an signed long and adds SIZE_SZ + MALLOC_ALIGN_MASK:

#define request2size(req) \
 (((long)((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) < \
  (long)(MINSIZE + MALLOC_ALIGN_MASK)) ? MINSIZE : \
   (((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) & ~(MALLOC_ALIGN_MASK)))

So, any allocation request between LONG_MAX - (SIZE_SZ + MALLOC_ALIGN_MASK)=
 - 1 and LONG_MAX
will cause an overflow and as a consequence the caller will get
less memory than requested.

e.g. on an 32bits system malloc(2147483647) will succeed but allocates
only 16 bytes (MINSIZE). I've tested this with U-Boot on i386 and ARM.

This is a beefy vulnerability for exploit writers since unbound allocations
do happen. Like in the ext4 and squashfs symlink code, I'm sure there are m=
ore.
If you don't care about verified boot, it's less of an issue, though.

I'm not so sure what the best fix is.
Mostly because I'm not sure why request2size() is anyway casting to long.
The original dlmalloc.c implementation doesn't do so. It has also a more
sophisticated overflow check, which is also missing in both U-Boot and Bare=
box.
See https://research.cs.wisc.edu/sonar/projects/mnemosyne/resources/doc/htm=
l/malloc-original_2src_2dlmalloc_8c-source.html
Lines 01938 to 01962.

I tracked down the bug to ppcboot, it's there since day 0.
So I don't know what's the intention behind casting.

On the other hand, since over commit is not supported, we could also just f=
ail
if the requested size is larger then the total amount of system memory.
I'm a little in fear that more overflows are lurking in the code.

2. Integer overflow in sbrk() (U-Boot only)

sbrk() does:
        ulong new =3D old + increment;

        /*
         * if we are giving memory back make sure we clear it out since
         * we set MORECORE_CLEARS to 1
         */
        if (increment < 0)
                memset((void *)new, 0, -increment);

        if ((new < mem_malloc_start) || (new > mem_malloc_end))
                return (void *)MORECORE_FAILURE;


If old + increment overflows (increment is a ptrdiff_t) then
sbrk() wrongly thinks we're shrinking the heap and memsets an invalid
range.

I propose as solution, applying memset() after the range check.

3. Wrong ptrdiff_t type (U-Boot only)

U-Boot defines __kernel_ptrdiff_t to int for both i386 and x86_64.
As a consequence, large allocations on x86_64 will overflow the increment
parameter of sbrk() and less than requested is allocated.
I suggest defining __kernel_ptrdiff_t on x86_64 to long.

Thanks,
//richard
=2D-=20
=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8Bsigma star gmbh | Eduard-Bodem=
=2DGasse 6, 6020 Innsbruck, AUT
UID/VAT Nr: ATU 66964118 | FN: 374287y




