Delivery-date: Wed, 30 Jul 2025 12:46:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh4Ju-005EiB-1z
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 12:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh4Ju-0000Cy-19
	for lore@pengutronix.de; Wed, 30 Jul 2025 12:46:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-Id:To:Subject:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8TMg7SiaRMQ4wyZw/YNKM2tSxKfMarh+tvlLA7MVs6Q=; b=xLMbIScH/5hZZtRpSSpfUn1bM+
	YbUnfY7st/i0V9OdW7E57T+GQ6oOaVajzOAcbanwE0omtdsq1f8pgSbWKRoRJ7nmalK0pqjgtZ9A3
	L7mEreyj7zpOS8CrMEeJ+qkmtuM5Rqlm5POLNGESFlv8McTViB4S5vR8yiSnvPDnelrdQY8aauXlV
	Le6b11JxMxBu4SuN618Jly8VO9AsraYKWz2VcD6/mMRw0F44UMFPp8rYmyLVoXSnt3LN6Me8qkfw6
	kFEmdXSe5ieI6ZN40rI4Fglz64MNcXzyktv7jTPQzlg4msT9wYkFVIKHy8h5rtKTwUh7UzthvzfL/
	UQMoVC/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4JF-00000001Fr5-01gj;
	Wed, 30 Jul 2025 10:45:21 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4JC-00000001FqQ-1aQ7
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 10:45:19 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45634205adaso29501475e9.2
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 03:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753872316; x=1754477116; darn=lists.infradead.org;
        h=mime-version:message-id:to:subject:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8TMg7SiaRMQ4wyZw/YNKM2tSxKfMarh+tvlLA7MVs6Q=;
        b=V2nXEh9rYdvwEJBk1mWut4Vjp2vwUgtVu5R2d5nm0zx0aZuetLnSRGAr7mEp9Ch2Ha
         SCJg+igzCl2SQHMy2UzoqnC2T2x3cx8/byzTVh26Bsovep1dklYRBXx35MuF/0eA3GXD
         x/1+167AQZ4LDn2TpcIoO1++KtgReqfWAeYmZlGrj5EjFloiMeqOlb6TI9mejBnL488R
         X/f5WCQIK6eUdz87yXFtSQ2VpTunjDI0qJYUx2mtI3otCalySn2lhOFb3ZlkPaXY0zwJ
         bvpeWrvzS2JdDSplY4NKbY0hHOKJlu0/i45pTo5Sx+FS+VPUSitf2Ae5Ti1297qmDISd
         J5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753872316; x=1754477116;
        h=mime-version:message-id:to:subject:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8TMg7SiaRMQ4wyZw/YNKM2tSxKfMarh+tvlLA7MVs6Q=;
        b=vxtW3PHDDuZJ+Nnx8zaLQq/TvMbVj/mK1UpdCQwuXyJb0wghR6MdWOS2yPf9rRtMqL
         3VhE1IraUw8vfpEUTeMvuLwwFrBM1jJSMFQi/Siok+G8mIvhEO0y27z7UmNnWRF4jL8L
         6lN72M2kwSsKrjlslSb7pf8jQa9LZXWvUxOcxvFJ7rJwTCQLkRtP/atKp3XmFaEKeSc9
         zN7BovF82aLfEytwOYkok25rH6EHEfpRWOuQknsz8HaJR2ov++FCB0yGYI1VW4tWDTVP
         N6IFvr4Z9s6xqL5dkREcQSoMz1KRJ84TRRroQr+3mJFyISElFEtbnmeqWR3lQwYmlMNm
         yHpg==
X-Gm-Message-State: AOJu0Yw4eG52u3uqyYLmCo6Vn2x0VWV9Pbxu0HLLul/rydqxv0Tlp5/V
	oWEuq2jOdk7XZ2atl4ewMLIQePvAuXC4EX55wLKB2eWXbi3gvw2S+cAyWBp9uw==
X-Gm-Gg: ASbGncsqFpyBryLiJ0gnKmpZr5sO5r/OQE0/a1SHByZAUzwyFCT/XdsiE2ovwKaF7YX
	ZfypRgLyGTadCf8J9Z53q1z4IlJS6JzVoPI0BQXRdxku85CE99W/MXzyPTFXJS3AoTF8zddKeIE
	DrhXUk/6QfxFGgjHxZwbabYCNw628yndFdweqNxsk1m+vgsXcMk8uZQd5kPTc1zzevrg2b+Hd0D
	E61xqmDa/H/dNKDuAHF+XpeGE2izef1mhs9qV3kaM9cWqdeT9x0P6QteXnDWbK/UHIsRyJLpqGj
	svA92gSAj15FIaAi+0ueZ2a5UIbNOrCCZAhOwaihDb7bNFF9TsKraErmFqunBKNVNvNJcBBcmsS
	Rlo9RmHImscxXd9IVRy80WI249R1ifzDU1cSy/gDCLwyytiDvgBG3OLuh7vFEZXe/
X-Google-Smtp-Source: AGHT+IFFqDOuG98BiKI8kfMwDhGhkahKqVKKY8h16abBID601tl2K0Hp6ufbwUFNWIiqJLdtZhnLYA==
X-Received: by 2002:a05:600c:64c7:b0:453:6b3a:6c06 with SMTP id 5b1f17b1804b1-45892bcfd4amr26252965e9.29.1753872316062;
        Wed, 30 Jul 2025 03:45:16 -0700 (PDT)
Received: from [192.168.241.169] (2-224-13-42.ip168.fastwebnet.it. [2.224.13.42])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b77db8a944sm14086960f8f.52.2025.07.30.03.45.15
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 03:45:15 -0700 (PDT)
Date: Wed, 30 Jul 2025 12:45:08 +0200
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox <barebox@lists.infradead.org>
Message-Id: <8JK70T.9NOP3AIQTVWR@gmail.com>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_034518_418988_B2D125E5 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: fixed partitions issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear all,

I'm encountering an issue with fixed-partitions on spinor with 
v2025.07.0 that
was not there in v2025.01.0.

The partitions are configured as follows:

 partitions {
     compatible = "fixed-partitions";
     #size-cells = <1>;
     #address-cells = <1>;

     barebox: partition@0 {
         label = "barebox";
         reg = <0x0 0x0100000>;
     };

     barebox_env: partition@100000 {
         label = "barebox-env";
         reg = <0x0100000 0x100000>;
     };

     barebox_state: partition@200000 {
         label = "barebox-state";
         reg = <0x0100000 0x100000>;
     };
 };

It seems to me the partition offsets (0, 0x100000, 0x200000) are not 
taken into account
so the results is that all the partitions point to the same piece of 
memory. That's how I tested it:

############
# v2025.01.0

barebox@mk8:/ md5sum /dev/nor0.barebox
937e462b306c7295096fb9446a97645f /dev/nor0.barebox
barebox@mk8:/ md5sum /dev/nor0.barebox-env
2fdd6851b32ae931637d4845c037b550 /dev/nor0.barebox-env
barebox@mk8:/ md5sum /dev/nor0.barebox-state
2fdd6851b32ae931637d4845c037b550 /dev/nor0.barebox-state

barebox@mk8:/ nv a=a
nv variable modified, will save nv variables on shutdown
barebox@mk8:/ nv -s
envfs: no envfs (magic mismatch) - envfs never written?

barebox@mk8:/ md5sum /dev/nor0.barebox
937e462b306c7295096fb9446a97645f /dev/nor0.barebox
barebox@mk8:/ md5sum /dev/nor0.barebox-env
392559d1b391d7fe69e36d068998983c /dev/nor0.barebox-env       -> it is 
expected to change
barebox@mk8:/ md5sum /dev/nor0.barebox-state
2fdd6851b32ae931637d4845c037b550 /dev/nor0.barebox-state

############
# v2025.07.0

barebox@mk8:/ md5sum /dev/nor0.barebox
01b367b04e57af6f4153b0043da594bc /dev/nor0.barebox
barebox@mk8:/ md5sum /dev/nor0.barebox-env
01b367b04e57af6f4153b0043da594bc /dev/nor0.barebox-env
barebox@mk8:/ md5sum /dev/nor0.barebox-state
01b367b04e57af6f4153b0043da594bc /dev/nor0.barebox-state

barebox@mk8:/ nv a=a
nv variable modified, will save nv variables on shutdown
barebox@mk8:/ nv -s
envfs: no envfs (magic mismatch) - envfs never written?

barebox@mk8:/ md5sum /dev/nor0.barebox
d41d8cd98f00b204e9800998ecf8427e /dev/nor0.barebox          -> it is 
NOT expected to change
barebox@mk8:/ md5sum /dev/nor0.barebox-env
d41d8cd98f00b204e9800998ecf8427e /dev/nor0.barebox-env      -> it is 
expected to change
barebox@mk8:/ md5sum /dev/nor0.barebox-state
d41d8cd98f00b204e9800998ecf8427e /dev/nor0.barebox-state    -> it is 
NOT expected to change


Do you have any hint? After the changes on drivers/of/partition.c 
between v2025.01.0 and v2025.07.0
shall I need to change something in my dts?

Best,
Stefano












