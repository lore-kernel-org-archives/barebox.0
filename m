Delivery-date: Fri, 01 Apr 2022 17:02:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naImn-001gPs-K2
	for lore@lore.pengutronix.de; Fri, 01 Apr 2022 17:02:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naImk-0001n1-Oa
	for lore@pengutronix.de; Fri, 01 Apr 2022 17:01:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bu6F4h8Hw5IK/RPFzEhI8nsHPJs1wCQTmYXPDfSIfWg=; b=fWdd4k+LFav55F
	y8LGgQhaPa789s5cihfczzU84/9W4KA2Ord0VduiSycoGVgCIFOaXdVEkqQuc+hUCa7cKUPOlHN67
	n+XtoiAudZN8140viqts5RjOgHJaPTP0n+Ws4+2Mp39tZBkM53PKaOfpkNQsid/abrQQAvaXzSIWg
	PTEhCwbxKZxMcC5rjDwmIq7O1gyNNdDWik7ityly3z4OpgWt9KFbCAQfYjK67/daY7TSVJ9OD7kMn
	NuLDw4jwyJCPDVrw3ZwnaG1YRqBeHJaMYL1zVI6WLSF1u8/rZtRux1nGqZ9qKYzJW+eO3ivOBZHiY
	0Ij/MEZUmBnyaqYCX/nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naIl3-006Imn-21; Fri, 01 Apr 2022 15:00:13 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naIkZ-006IdJ-36
 for barebox@lists.infradead.org; Fri, 01 Apr 2022 14:59:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 39AC83ACDC2
 for <barebox@lists.infradead.org>; Fri,  1 Apr 2022 16:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1648825168;
 bh=zmveZzmN2KeIMsLPpUcGzhl2p+i0Q3Ls3ROyO2a5Gos=;
 h=Date:From:To:Subject;
 b=iSydQOSReNHb/LpYpq5aCyzKftY7s0E+HuzhGykC0hIYD2ZmEdznNWtfuiwSe178z
 ilAbZh/NMxrw0Pfr2ZDz/XdHYcGSHCeak0vTSP6YHzz/WS1rMXblYU/Cj614OI8BlK
 7LxyyE5IVlZA7ptELdG4i4qiYuD+P5R8k/bNQN0k=
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id 2A3793ACE06 for <barebox@lists.infradead.org>; Fri, 
 1 Apr 2022 16:59:05 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 9E9F53ACE23 for
 <barebox@lists.infradead.org>; Fri,  1 Apr 2022 16:59:04 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 4A17527E043E for
 <barebox@lists.infradead.org>; Fri,  1 Apr 2022 16:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 32AE327E0442 for <barebox@lists.infradead.org>; Fri,
 1 Apr 2022 16:59:04 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 VBN_cLFiALTu for <barebox@lists.infradead.org>; Fri,  1 Apr 2022 16:59:04
 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 1A6B027E043E for
 <barebox@lists.infradead.org>; Fri,  1 Apr 2022 16:59:04 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <6463.62471338.9d6a7.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 32AE327E0442
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1648825144;
 bh=X1M6fei2h8nX2onvHuAjDDkLqrvCRs8eMFipW5dor6o=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=T6zL7DKUEJQoBLy6E6E693Q/BeZzdoanxrtVYQphu6YAcRIu8F4XLj56jR9ZhMxoU
 bIbGZdfz/kGDE2vpm+WdcO8hL2dNpP+0slBCQ2GC6tP2e2NZ5bF+wGN0Z7bor/trSJ
 G/cgz7nZJ0zYj7g1e9FeUgQLZYKSi/L9HE6CAsHM=
Date: Fri, 1 Apr 2022 16:59:03 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20220401145902.GF4351@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_075943_384021_A256B338 
X-CRM114-Status: UNSURE (   2.65  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [ANNOUNCEMENT] Getting more of Barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CkRvZXMgYm9vdGluZyBsaW51eCBpcyB0b28gc2xvdyA/IEFyZSB5b3UgdGlyZWQgb2YgbGludXgg
Z2V0dGluZyBpbiB0aGUKd2F5PyBDYW4ndCB5b3UgaGF2ZSBzb21ldGhpbmcgdGhhdCBqdXN0IHdv
cmtz4oSiPwoKV2h5IGhhdmluZyB0byB3YWl0IGZvciBsaW51eCB0byBib290IHdoZW4geW91IGNv
dWxkIGpvaW4gSVJDIGNoYW5uZWxzCnJpZ2h0IGZyb20gdGhlIHN0YXJ0LiBUaGVyZSBpcyBub3Ro
aW5nIG1vcmUgdG8gZG8sIHJpZ2h0PyBUaGVuIEkgaGF2ZQp0aGUgc29sdXRpb24gZm9yIHlvdSwg
aW50cm9kdWNpbmcgSVJDYm94OiB0aGUgdHJ1ZSB1bmxpbWl0ZWQgSVJDCmV4cGVyaWVuY2UgeW91
IGFsd2F5cyB3aXNoZWQgdG8gZXhpc3RzIQoKSVJDYm94IGlzIGEgdHJ1ZSBzdWNrbGVzcyBJUkMg
Y2xpZW50LCBpdCBydW5zIG9uIHRoZSBiYXJlYm94IGJvb3Rsb2FkZXIKd2l0aCB0aGUgYWRkaXRp
b24gb2YgYSBzdHVwaWQgVENQIGltcGxlbWVudGF0aW9uLiBUaGlzIGlzIGZvciB0aGUgYWRlcHQK
dGhhdCBzZWVrIHRoZSB0cnVlIElSQyBleHBlcmllbmNlLCB3aXRob3V0IGFueSBjb21wcm9taXNl
cy4gRm9yZ2V0IGFsbApkaXN0cmFjdGlvbnMgYW5kIGVtYnJhY2UgdGhlIHRydWUgbmF0dXJlIG9m
IElSQzogam9pbiBhbmQgY2hhdCB3aXRoIHRoZQp2YXN0IGFuZCBpbmZpbml0ZSB3aXJlZC4KCllv
dSBjYW4gY2hlY2sgaXQgb3V0IGhlcmU6IGh0dHBzOi8vZ2l0aHViLmNvbS9qbWFzZWxiYXMvSVJD
Ym94CgpTZWUgeW91IG9uIElSQwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK

