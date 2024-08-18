Delivery-date: Sun, 18 Aug 2024 10:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sfb4d-00Api7-2z
	for lore@lore.pengutronix.de;
	Sun, 18 Aug 2024 10:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sfb4d-0003cq-90
	for lore@pengutronix.de; Sun, 18 Aug 2024 10:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cLmYmBtop9FO08vJOxKqGrlpE9LtgY736H0fSuuq+/E=; b=tuehTMuHqwkaPRNaGdljQURHlE
	+jQCKcO2ogfdVTTgbfvNeD777uOxAnS+a3wZ6IYDO/nyL2fPLA2oKXbiGuQr9SLXd+PdiP4minhuU
	XcjtItuHF6U1jDDstHB7O/HzcuuNIX3Mj8W0l4ICF0ChMfpPm64rwZoYhdDPBfGdznHfh4a99tYoV
	66V8wMtA5a6Oy8dxz0WMUaioxlvvUwUKD+xLmzI3j1oLKPABS2urMMvsti50ZzstS/rCOdPbT03bv
	h/JNZfh9qAZ7m35sBoBIMopcg3daB5MI1jQ3OXebnGRUrwCMXI1RvusuP4APIV4J+BOhsIdC0Uxm6
	vxxiUajg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfb4E-0000000GLXl-1C7l;
	Sun, 18 Aug 2024 08:15:14 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfa7W-0000000GGi5-1AY8
	for barebox@lists.infradead.org;
	Sun, 18 Aug 2024 07:14:35 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-37195f88a17so1408403f8f.3
        for <barebox@lists.infradead.org>; Sun, 18 Aug 2024 00:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723965272; x=1724570072; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cLmYmBtop9FO08vJOxKqGrlpE9LtgY736H0fSuuq+/E=;
        b=Blos7m2Igvq0kEWcgWcPQ2ll6x7Ux20PcnbFnPewGmJrLcwcwxLNetTmju5YSmkzqo
         x7dl9Y4mJV916eZWMAaIr+PeVSvf2ltGPl2AB/7ac2QoZKD9vB1Mw+DORtTrkij7B0Vd
         FcnghHHvMg+kPj+IkOgXgO8qs3QbD9miiGciBs96PZBAXoGl470UKjGnCqN371wgkbIt
         BFz/oh/kapDv6phm6GSHhzW8GtZJvpjQ19IHKL9KDfZhyRCso5nhhuwiNMgOmY5lwqJo
         4eHgvnecGFXZ7+f0DZMLAyTAyfyPBYiUlrBeOAN5tjbTjq1LpiWFBD/WyvEJeQbDaLx1
         kZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723965272; x=1724570072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cLmYmBtop9FO08vJOxKqGrlpE9LtgY736H0fSuuq+/E=;
        b=IE7n1hM/uhnUUw2mpBRmrcw3/neSL2nERAKC3pMjudW2JOoaWdF2JpB0QeO5hZ4635
         o4tlfUQzKkQCocTXwc5am1KvezHgJxt8CEuzI5dfNHUk0iZkn4ZmJ/jraDP7A480ZbDT
         fbiMDB2aDnvnn3sFAccdm+7G8ff+Sv1GADttaHSpZkruZ78l31YLAsJP2CIGmh9c7joz
         EZPEIE+YmjFscQHD1E2NdXxP3E3Z8caHDUX/Iek17ZWb3TL1AiiYvvN5QpD5ybtcn2IE
         wSH6O5zKCqNnkQ8gQSCNWgqgvQe3txlBLgPgQkCSo9Bb5SDv2vP+AS3mTMbgaw/EJzhZ
         Bdbg==
X-Gm-Message-State: AOJu0YwSNK8wo5kIurrwr3skE2MHl/Yemo/IUVgkjmQRHMa0RwaU7xC7
	VDBUZxcKcfu9/kU8WFLOTD3a2MQ7M1fzXYW6XrJBffmLFL8jJvN4pMerMQ==
X-Google-Smtp-Source: AGHT+IF1guUWTCBykd3kL8F4tEQGn+bNuQnc2pK7J1EnF4OCpek1H6F5pOVjtLBR8pZQMBLdclgcUA==
X-Received: by 2002:adf:9788:0:b0:371:7e3f:6cc with SMTP id ffacd0b85a97d-37194317663mr4963425f8f.9.1723965271968;
        Sun, 18 Aug 2024 00:14:31 -0700 (PDT)
Received: from localhost (cpc1-brnt4-2-0-cust862.4-2.cable.virginm.net. [86.9.131.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718989705bsm7362940f8f.72.2024.08.18.00.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 00:14:30 -0700 (PDT)
Date: Sun, 18 Aug 2024 08:14:29 +0100
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZsGfVTD5N-kZjVJF@antec>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
 <20240814161435.566270-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240814161435.566270-3-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_001434_342233_CFFD45AE 
X-CRM114-Status: GOOD (  12.65  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ci: container: downgrade OpenRISC toolchain from
 14.2.0 to 13.1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 14, 2024 at 06:14:35PM +0200, Ahmad Fatoum wrote:
> The newest toolchain bump breaks OpenRISC start-up under QEMU: The console is
> now completely silent. Steps to reproduce the hang:
> 
>   CONTAINER_GCC13=bdfdd5effcc169ebf8a9df2f1a5956ef34549682f78b450a97aceea2afd76f7a
>   CONTAINER_GCC14=fa35adeae1ab49b4dc09fc3bf4d68f92541a0d1f41e0df91a4879fd331e4b592
>   CONTAINER_BASE=ghcr.io/barebox/barebox/barebox-ci@sha256:fa35adeae1a
> 
>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC14}
>   export LG_BUILDDIR=build-openrisc
>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
> 	--interactive
> 
> Running the same steps, but with the older toolchain boots successfully:
> 
>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC13}
>   export LG_BUILDDIR=build-openrisc
>   git checkout v2024.08.0
>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
> 	--interactive
> 
> The hang happens somewhere before the jump to _start in arch/openrisc/cpu/start.S.
> Until that's fixed, let's pin the OpenRISC GCC version to the old v13.1.0.
> 
> Cc: Stafford Horne <shorne@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Stafford, do you have an idea what could cause this?

Hi I am not sure about this, no new changes in the or1k-linux toolchain that I
know about.  I will try to reproduce and see what is going wrong.

-Stafford 


