Delivery-date: Fri, 19 Nov 2021 10:56:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dB-00013F-5Y
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d9-0006T0-Vw
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGufJIcZWH2YA4rBwlBqxvyVPZowy7CXdnzsZ5qbW48=; b=zAkbMUrKMjOriR
	fKcAeIDKppmp2Nmrh/WFCLy9FJA9bhplvafETvJGZ5udy8SN1q3dpXjR78B+bpmBDI50b/BhKym7i
	bJnC19mJ+SRuBgGbkwb/AyJbZh0UHGj5UK8aqUQYKZzMHJDW7RFjaklXgDp3q98mcsTclrvkhg2jN
	mn4D2/m46LJsdlIIBWdCfs9PZC/xuBibGZKPtI/b/i+ECPu4bE3d2WV3X/Z5tIrSKa1ifEoUeBivf
	Y2AJi1b6Kfh+tEwG07s42H9yio3r+k8FsX75ZA+qV7z2j2tTyfiVqkxKLt85WL6ubFXz5pH/lVT2s
	PDavRzujvd9y4PaMXgEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bi-00A2bw-NR; Fri, 19 Nov 2021 09:54:58 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZH-1S
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Av6AoCyqQw+T4yXOp6B5z8E0SLE9cr1Y5VJkHVSofJU=; b=er6d2gHtuGpMlud+Gn2gbdvd99
 umefRm/E2nXZ/9OLCIv5Y6x64a2umynsnZ9LWUdCiuyZhJvP546oWuD4FSBdM6xDKGkg0raAF4QhX
 5LhDqhSOs+anxD/7HARVAZKeNNPvrtMHGDbW1qQciFcQKGSdVqPnlESyLPKg03eVorA7dAO2VoZDF
 /WGVwKx+P2+yAOz9hnecrCmDhU5cljaijm/X77nKomjcVZHuiMLlpoz4mG2KOItezjnpl5YHiWAPG
 ykdfKiOwmSuZgqWH+QrqNg3ctU79qX+M4bxyVQYhfaIrxXftgAANIPRuAdIDTzmWSGKm1cne8ZmHG
 P3A8Cdpw==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-60
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:24 +0100
Message-Id: <20211119095429.1905473-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_435921_8862DA72 
X-CRM114-Status: UNSURE (   4.35  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] flash-header-phytec-pcl063: Set SOC voltage to 1.25 V
 during boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogU3RlZmFuIFJpZWRtdWVsbGVyIDxzLnJpZWRtdWVsbGVyQHBoeXRlYy5kZT4KClRvIGlu
Y3JlYXNlIHN0YWJpbGl0eSBkdXJpbmcgYm9vdCBpbiBjb2xkIGNvbmRpdGlvbnMgKDwgLTMwIMKw
QykgaW5jcmVhc2UKdGhlIFNPQyB2b2x0YWdlIGZyb20gMS4xNSBWIHRvIDEuMjUgViBpbiBEQ0Qu
IFRoZSBBUk0gdm9sdGFnZSBpcyBsZWZ0CnVuY2hhbmdlZCBhdCBpdHMgZGVmYXVsdCAxLjE1IFYu
CgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gUmllZG11ZWxsZXIgPHMucmllZG11ZWxsZXJAcGh5dGVj
LmRlPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWogUGljZWogPGFuZHJlai5waWNlakBub3Jpay5jb20+
Ci0tLQpDaGFuZ2VzIGluIHYyOgogLSBubyBjaGFuZ2VzCi0tLQogYXJjaC9hcm0vYm9hcmRzL3Bo
eXRlYy1zb20taW14Ni9mbGFzaC1oZWFkZXItcGh5dGVjLXBjbDA2My5oIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9w
aHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVyLXBoeXRlYy1wY2wwNjMuaCBiL2FyY2gvYXJtL2Jv
YXJkcy9waHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVyLXBoeXRlYy1wY2wwNjMuaAppbmRleCA5
YThmNWYxOGUuLjhlMGFiNmY1OCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1z
b20taW14Ni9mbGFzaC1oZWFkZXItcGh5dGVjLXBjbDA2My5oCisrKyBiL2FyY2gvYXJtL2JvYXJk
cy9waHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVyLXBoeXRlYy1wY2wwNjMuaApAQCAtMyw2ICsz
LDggQEAgbG9hZGFkZHIgMHg4MDAwMDAwMAogc29jIGlteDYKIGl2dG9mcyAweDQwMAogCit3bSAz
MiAweDAyMGM4MTQwIDB4MDA1ODAwMTIKKwogd20gMzIgMHgwMjBjNDA2OCAweGZmZmZmZmZmCiB3
bSAzMiAweDAyMGM0MDZjIDB4ZmZmZmZmZmYKIHdtIDMyIDB4MDIwYzQwNzAgMHhmZmZmZmZmZgot
LSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

