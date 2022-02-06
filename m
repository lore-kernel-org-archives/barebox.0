Delivery-date: Sun, 06 Feb 2022 10:49:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGeAM-007Fcc-S0
	for lore@lore.pengutronix.de; Sun, 06 Feb 2022 10:49:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGeAL-00071p-Mr
	for lore@pengutronix.de; Sun, 06 Feb 2022 10:49:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIP44iyZjbD1MdOFYq8jT77uuf+w9uSaTgqkbXuFD04=; b=jTLLDZ3LWRjQb6
	HOTgIKB6aQc+lVFX+cQixqrIoG1ti6VcHJdvb1z9MW5GvOKllUir1E2D3/CXMRLItjsMc19/OJ9+J
	gTRvJ730J4Yc1o7QA/2cfJX3f+D+BwopX0Y85nOagt+iLdGCwIoRfohZ2b6Fk7/o+Y+S1YNjy6WPX
	lgAk4bo+QOWPkA9roc7S3p7YHJ8OuHJ4+VKNLfoPoF4YdG2LUMJRkYnNykFqcArUCnblhLujeQw+Y
	xz1LLkNIG7evNHep8GrP1XFxzPNoDorZ3l8areGKOJYAYhqKJ3SqiWjA/jHyXVCJdPqDruB7IEsHL
	ghBWvdgGEGNbIG0P+Sfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGe8V-0083xo-P1; Sun, 06 Feb 2022 09:47:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGe8S-0083xi-21
 for barebox@bombadil.infradead.org; Sun, 06 Feb 2022 09:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Date:
 Content-Type:Subject:Cc:To:From:Message-ID:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Vq5mynR+Oft6kv/P83RlwZh2+TiZ54OBqIQ3igWjO60=; b=d3IbG39ZweaXppKSwFoCdSWBeP
 unV5sLo8yvaLf0Kf6zs9Fl0CLvXOyGEahwEqIB8J7D61uB8/Px1ahfiAcm2wS5ocNPdQt0DFcox36
 XgrmLyFOwz0UBBvJYZBraIYhXo/E6edH8Ird6yOoxmTw6l07fqoR8lH2SeLG4729mvM2Ad1/jXBtI
 40gt2xOx7LfFzmceeo37RRmmkpFSKoHwOhJruTA68V8+T+IW+9FnuuolQuJGG+HRZJvGZzu4o0rIZ
 sp+10rFw7aZLhXDWyxl+mU7xZPu3VThkqzLAOaq7/PUgXg0aL6CnAqde12VMQRoK+w6YPtsu6nEpd
 pdCH912w==;
Received: from mout.gmx.net ([212.227.15.18])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGe8L-007OA0-8y
 for barebox@lists.infradead.org; Sun, 06 Feb 2022 09:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644140797;
 bh=Vq5mynR+Oft6kv/P83RlwZh2+TiZ54OBqIQ3igWjO60=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ibuRxU5jEARpbJyLH5C2z/GhasHbZncwE83YdQqInorNwqTYAxXeY7nUzGMWXIlZC
 IfiJi8aZSV4HfWlPoPjStueSewWUyLsOGX9xtf+tytPw3t7gxsO8gjdKeW5wytnzfB
 iMJ3FuaiRSHGiQRInmwMZVjjZJibbGD/bS+g05AM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.75.84] ([80.245.75.84]) by web-mail.gmx.net
 (3c-app-gmx-bs32.server.lan [172.19.170.84]) (via HTTP); Sun, 6 Feb 2022
 10:46:37 +0100
MIME-Version: 1.0
Message-ID: <trinity-f18e2dcc-46cd-4aa5-af9c-9c54b76b19ea-1644140797841@3c-app-gmx-bs32>
From: Frank Wunderlich <frank-w@public-files.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Sun, 6 Feb 2022 10:46:37 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <2163dc49-9cf0-7df9-e559-f99bf2d1f31f@pengutronix.de>
References: <trinity-455847f3-e03d-45aa-be41-64395a88bb28-1644070603514@3c-app-gmx-bs06>
 <2163dc49-9cf0-7df9-e559-f99bf2d1f31f@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:EIa7sDFVasjf9k501C4gVFsEaNdrSEFPqJwv68tOM/7myi8WQOB1Z0cEYUlZrf9h3c6qc
 /9DCJBEzOfXKeaNtHgJ1gaJPELzS+YlzV+UkxyVaZxImFNfex2swGh+RIYNDAkPSAw810XFKWLJN
 6hlJvzxIF4HqzTsHO2JiMiY9lx6efm488L9jIBprMjh+e9CeOtS6WmRNVN4go5pKGM2KYyib+wtx
 XsS0kaOkDGKyXx7px4q/c3ws+SrHCO0nCpjlnKl0smIxya5uoh6fmE6MLFHAhmSAuAgyQ5hH1qH9
 Sk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:9Bcv2vhQke4=:Vxvbm0vyQhsVAmSUsFIBKf
 tbY1JiFSbGJec5PMc+i21qlRjYyF2iX8d5EDlY0zpkGOvRoDSG7yMcnTEI65M2rryb6whMlsm
 GgBc7HjzUKAivZ9iMW1QfCXc7tuiJV5zmT9+R4BZVUQN4NvM5SX0drXU2MHGAn0/clobXXJSa
 9F5xODo+VD2HLbeVKw8XNc7CqIV3FINOkNlJZDa1HCuahjZwM61dRpGSX1YqPMcRe0HkHVl7P
 PYtbleWrttTG3ZvKH5tpCqcZ0DL6PEH4osyOdT57jldBNVXVo8xOiM3VjlwBnghHkp+0qiDbR
 wFCQWhVAA9GO8BEkiiEQv9Dylku52kkQfRvX93C5go+okHVTbfoAF8zBdI73L1fNraT+WvU0B
 j7SZ5znFNctegEPHGVGUVsEwvGJ6E3+XgH7oT8KR6Bm4Qwd1BkxN3Yj1EkB8hBUehUN+aEmXD
 q7W5g7KfG7+kIZfFXwtx/6fUXepF8GwHshqE4glp25l5x3VeHg7iSwky+QA/UHdAOxD2Jr4xm
 XG8iUyCbSlzpevxRbi8wEXyVhdkwlGFmtCydMVhIOLD2T5+ExEh9WqZ+gmPvsy5jg1RlKc3oZ
 l4UMaKkn2pFgcaAhg/8NYvFbd1K0zfA/WPF0zFuJ56FTRTpl7gNl2GYzpM48mYbbH5aRxoPDK
 pitBqa0236ria4wwIDeM8ztVMiXGZcm5/chS3iJxkJBttY7bdDMNTEQRJCm1fhVycgC9E928k
 CYeddWnayOYJTsf7tR5cI7MLtSfd5nDCGRBW3qmQT233F3MXbyr+WE94FOJHis5d/oeSou0Al
 dIgtyO2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_094701_495724_84479FEA 
X-CRM114-Status: UNSURE (   6.68  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: chainload barebox from uboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

thanks for your answer.

BOARD_ARM_GENERIC_DT [=y] and BOARD_ARM_GENERIC_DT_AARCH64 [=y] were already set,

so i just copied the

arch/arm/dts/rk3568-bpi-r2-pro.dtb
and the
images/barebox-dt-2nd.img
to my sdcard and could it boot this way (using booti instead of bootm) :)

=> fatload mmc 1:2 ${kernel_addr_r} barebox-dt-2nd.img
reading barebox-dt-2nd.img
403792 bytes read in 38 ms (10.1 MiB/s)
=> fatload mmc 1:2 ${fdt_addr_r} rk3568-bpi-r2-pro.dtb
reading rk3568-bpi-r2-pro.dtb
35602 bytes read in 8 ms (4.2 MiB/s)
=> booti ${kernel_addr_r} - ${fdt_addr_r}

so problem solved ;)

regards Frank


> Gesendet: Sonntag, 06. Februar 2022 um 00:20 Uhr
> Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>

> You'll want to use the generic DT 2nd image, which in your case would have a Linux
> ARM64 header and be bootable just like a Linux kernel.
> See the documentation patches I cc'd you on.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

