Delivery-date: Wed, 07 Sep 2022 10:33:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVqUk-009Qmm-JH
	for lore@lore.pengutronix.de; Wed, 07 Sep 2022 10:33:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVqUk-0006iV-2H
	for lore@pengutronix.de; Wed, 07 Sep 2022 10:33:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:Message-Id:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jR52uvkssLJPnJ03Rlq+ArD6hK7xwk3lkNIfNAr5MPM=; b=j4ekrysnZdapuE39EEx8K+EgUb
	Gpvk2QKBjEoSbj9lA0k5PcRw+UWubPLjtU/5gGU0+0elhAn+yLjL5vn2P4hI6qivLcIFjznctG2tn
	iHp3wd3Vx8WQOllzSUJJGlMGwR0AhGJVRSeCeQNJWC1bfw0w8D/gA8iUAnApICblxI1rk9p63goGe
	pABYQqrdwAZjbkPectXBABZtxkEkDBICWr0zMu6ONkz+j8lpsf3lwYbdihPK+ZRvVI9pcCHW+IwJa
	WcGC3ZyTtjCTbonxlvJiYAFai52W9EOa4odaHLF11FbbtGUEbB9JzEBZnJmLkjdSwnxnB3O1qceMF
	rzuErSvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqSS-004HYs-5S; Wed, 07 Sep 2022 08:30:53 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqGC-0049Io-TE
	for barebox@lists.infradead.org; Wed, 07 Sep 2022 08:18:14 +0000
Received: by mail-lj1-x22f.google.com with SMTP id c10so5568247ljj.2
        for <barebox@lists.infradead.org>; Wed, 07 Sep 2022 01:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:from:to:cc:subject:date;
        bh=jR52uvkssLJPnJ03Rlq+ArD6hK7xwk3lkNIfNAr5MPM=;
        b=SJiSBfAlycxNTTpEPqsLBJ7l6CVLqlsnP2XOZXgEI+06ZvOD+QBARst87Qzw8RHkZ5
         ArV8k+Kt6g64n4dazqghL1eUgZZMHo8WCyiWrKnQWbEAtXo7aQR0HHSw/0YsaNJezqo4
         zEYTa2c4IbPcXcHu5DYiMmQIC6Ym+850kjLX9CvXdyywvB625oh5RxbUubDIhQT3NCfV
         4WgKB4sWQqbmxsySyH3/s5+fmvpCZTAuXKf8QDkufCJuIZLHIZaHz7Q3kyIAIhOpas5U
         iORQaocVHv1ZnL23rlDc1hkp2t1xUaxCmakst+dedDJH/r4PsRPNN88Q4KRI9vSBF+c5
         1LOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:x-gm-message-state:from:to:cc:subject:date;
        bh=jR52uvkssLJPnJ03Rlq+ArD6hK7xwk3lkNIfNAr5MPM=;
        b=5YvlBH/ECDcJeGPggzt+GIgXakIxdgVH70Wdo8J4v588dW2Ya4wsSq+GI92KloZ5rD
         emi0YSIwH/Bxcxr0wGNRBLE62Hs1W+ZX4IQ48G1QvZxWnHuHYf8jl4oxKNks3a0ZiZd9
         ppf/QosjFxanhVAj9Ot/LH8/FABeHPwMMuVDTEMLiu3SHuc3x6YXAZ6Okp4foGDmsDqf
         GbfbDFHxRCY1sAZC6lXgZ1S9QjfjpkW+By1J8jonxl7wayo9x/H7AcCTOBApn4nDvW3c
         8/vZDdYw9O04djDVq1TY4dwyAeYcS+vwxhtIjZRh2I5Os9I5qt4zPdrlRr2pG3MBZKvM
         IBXQ==
X-Gm-Message-State: ACgBeo3EPTxnDUVlnnMNCvMatBvqG6OdEmSJBUv5CR/2iIwQ5DmyH74l
	c+zTkrq4XgHvVrhLl3X4RldJKO/K0Cg=
X-Google-Smtp-Source: AA6agR4XpwRJSmkcku8T7s/tbuGFl1Y4kJTPo6GNlZV4hXVg2nmxmsv5jrcpPHAOMIkvYNDdwjnjzg==
X-Received: by 2002:a2e:a28e:0:b0:25e:734f:38fa with SMTP id k14-20020a2ea28e000000b0025e734f38famr629325lja.446.1662538689112;
        Wed, 07 Sep 2022 01:18:09 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id v18-20020ac258f2000000b0049476667228sm2314799lfo.65.2022.09.07.01.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 01:18:08 -0700 (PDT)
Date: Wed, 7 Sep 2022 11:21:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Trent Piepho
 <trent.piepho@igorinstitute.com>, Oleksij Rempel <o.rempel@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Message-Id: <20220907112118.71575e3650222736432b3086@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_011813_032517_88ABE068 
X-CRM114-Status: GOOD (  11.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Makefile.lib: cmd_dtc: warning: missing whitespace after the macro
 name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Everyone!

During MIPS ath79_defconfig build I have a 'missing whitespace after the ma=
cro name' warning:

  AS [P]  arch/mips/dts/ar9331_tl_mr3020.dtb.pbl.o
  DTC     arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb
<stdin>:1:9: warning: missing whitespace after the macro name
  XZKERN  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb.z

E.g. see https://gitlab.com/frantony/barebox/-/jobs/2969826747#L47

The reason is the scripts/Makefile.lib generates a C macro with the point s=
ymbol in the macro name because the arch/mips/dts/ar9344-tl-wdr4300-v1.7.dt=
s file name contains the point symbol before '.dts', as a result we have:

  #define ar9344_tl_wdr4300_v1.7_dts 1

e.g.

  barebox$ grep -RHn -o "define ar9344_tl_wdr4300_v1.* 1" . 2>/dev/null
  ./arch/mips/dts/.ar9344-tl-wdr4300-v1.7.dtb.cmd:1:define ar9344_tl_wdr430=
0_v1.7_dts 1

cmd_dtc in scripts/Makefile.lib substitutes the '-' symbols with the '_' sy=
mbols but do nothing with other unwanted C preprocessor macro name symbols.

It looks like the linux kernel has no problems with extra point symbols in =
dts file names, there are several files with extra dot in dts:

  barebox$ find dts/ -iname '*.*.dts' | wc -l
  33

So we have to fix Makefile.lib.

This simple patch fixes the warning problem:

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 16308497b84..2f79656c1e9 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -363,7 +363,7 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 dts-frags =3D $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc =3D DTC     $@
 # For compatibility between make 4.2 and 4.3
-cmd_dtc =3D /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\=
n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
+cmd_dtc =3D /usr/bin/env echo -e '$(pound)define $(subst -,_,$(subst .,_,$=
(*F)))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
 	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \

I suppose that this simple patch may lead to some undesirable side effects.

Any suggestions?

--=20
Best regards,
=A0 Antony Pavlov


