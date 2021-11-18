Delivery-date: Thu, 18 Nov 2021 16:33:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnjQ5-0003UA-Gx
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 16:33:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnjQ4-0004cn-K8
	for lore@pengutronix.de; Thu, 18 Nov 2021 16:33:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=65m3OfmkHQC2xiYnakoJD/BIi96fb4NZ0z8sGHwcSu8=; b=i6nRxNyLp8fmsV
	Cy/NapM+l50ymbqa/jbwc2tcXsHYL9q6NN1uL4oirxbG8HSmgKEhRTiXi+4uH1sRuZhTcnTWLactR
	ult4S+YnlTm8TNXZQiCnO3y8ARkmLBDMptgM1YeFZNVox0C+1RLOFPwB68AgYpff0xLI9dO2fEOfg
	xGva9NNTecP8Bm4d0HB/VvgF4wkGErvsRaVhfR6HGLbfIJr4Wh8kGlq6dXKve2zsHzvrTlR77FIzc
	1nbbFVuIonHPmhcepnm0pLvKYi7AUUAV1L1L18uPBQnB689QjusvCe33XuGF1kVQNdHc8gs8UxPlq
	s9+0x730jCzZIrUN2/4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnjOW-008HVZ-UF; Thu, 18 Nov 2021 15:32:13 +0000
Received: from smtp74.iad3a.emailsrvr.com ([173.203.187.74])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnjOS-008HUg-0W
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 15:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1637249525;
 bh=ZZcbaITfAO0GalQf5u7/xhEOfo0DIqt2mDnxuRVDSPU=;
 h=To:From:Subject:Date:From;
 b=Y7T540ZqyGiawKIEED4smYewy9R2SYYz1HbpCm2bYyXE1ofeuUub10KnHkQhX5WPT
 tvHTmuvdyiPpzEGlzrIwnDO0bld0Ji/GBG02PZauZ1nUNzGFKcOaQQGueV3+3xL45h
 4gxxbFsI2g6Ii7jpiP5Sy6ETXHmyc50dyZrFAmDo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp26.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5CFE73B4D
 for <barebox@lists.infradead.org>; Thu, 18 Nov 2021 10:32:05 -0500 (EST)
To: barebox@lists.infradead.org
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <62b76c10-a376-a2f5-5b21-fdda86db4a03@mev.co.uk>
Date: Thu, 18 Nov 2021 15:32:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Language: en-GB
X-Classification-ID: a6731e00-d731-4460-a263-267f3d415734-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_073208_177857_180A9BBD 
X-CRM114-Status: GOOD (  13.28  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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
Subject: Build failures with CC=arm-linux-gnueabihf-gcc-11
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpNeSBEZWJpYW4gInRlc3RpbmciIGJ1aWxkIHN5c3RlbSB1cGRhdGVkIHRoZSBkZWZhdWx0
IHZlcnNpb24gb2YgCmFybS1saW51eC1nbnVlYWJpaGYtZ2NjIGZyb20gMTAueCB0byAxMS54LiAg
QnVpbGRpbmcgYmFyZWJveCBpbiB0aHVtYi0yIAptb2RlIGZvciBhbiBBUk12NyAoaXQncyBhIFNv
Q0ZQR0EpIHdpdGggdGhpcyBjb21waWxlciBmYWlscyB3aXRoIAphc3NlbWJsZXIgZXJyb3JzIHN1
Y2ggYXM6CgogICBDQyAgICAgIGNvbW1vbi9zdGF0ZS9zdGF0ZV92YXJpYWJsZXMubwp7c3RhbmRh
cmQgaW5wdXR9OiBBc3NlbWJsZXIgbWVzc2FnZXM6CntzdGFuZGFyZCBpbnB1dH06MTUzNTogRXJy
b3I6IHNlbGVjdGVkIHByb2Nlc3NvciBkb2VzIG5vdCBzdXBwb3J0IGByZXYgCnIzLHIzJyBpbiBU
aHVtYiBtb2RlCntzdGFuZGFyZCBpbnB1dH06MTU3NjogRXJyb3I6IHNlbGVjdGVkIHByb2Nlc3Nv
ciBkb2VzIG5vdCBzdXBwb3J0IGByZXYgCnIzLHIzJyBpbiBUaHVtYiBtb2RlCgpCdWlsZGluZyBp
biB2ZXJib3NlIG1vZGUgKFY9MSkgc2hvd3MgdGhhdCAibWFrZSIgaGFzIHNlbGVjdGVkIHRoZSAK
Y29tcGlsZSBmbGFncyBgLW1hcmNoPWFybXY1dCAtV2EsLW1hcmNoPWFybXY3LWFgIGluc3RlYWQg
b2YgdGhlIHVzdWFsIApgLW1hcmNoPWFybXY3LWFgLgoKTG9va2luZyBhIGxpdHRsZSBkZWVwZXIs
IGFsbCBvZiB0aGUgZm9sbG93aW5nIGxpbmVzIGluIAoiYXJjaC9hcm0vTWFrZWZpbGUiIGFyZSBm
YWlsaW5nIHRvIHNlbGVjdCB0aGUgZmlyc3Qgb3B0aW9uIGFuZCAKZGVmYXVsdGluZyB0byB0aGUg
c2Vjb25kIG9wdGlvbiAoaWYgYW55KToKCmFyY2gtJChDT05GSUdfQ1BVXzY0djgpCQk6PSAtRF9f
TElOVVhfQVJNX0FSQ0hfXz04ICQoY2FsbCAKY2Mtb3B0aW9uLC1tYXJjaD1hcm12OC1hKQphcmNo
LSQoQ09ORklHX0NQVV8zMnY3KQkJOj0tRF9fTElOVVhfQVJNX0FSQ0hfXz03ICQoY2FsbCAKY2Mt
b3B0aW9uLC1tYXJjaD1hcm12Ny1hLC1tYXJjaD1hcm12NXQgLVdhJChjb21tYSktbWFyY2g9YXJt
djctYSkKYXJjaC0kKENPTkZJR19DUFVfMzJ2NikJCTo9LURfX0xJTlVYX0FSTV9BUkNIX189NiAk
KGNhbGwgCmNjLW9wdGlvbiwtbWFyY2g9YXJtdjYsLW1hcmNoPWFybXY1dCAtV2EkKGNvbW1hKS1t
YXJjaD1hcm12NikKYXJjaC0kKENPTkZJR19DUFVfMzJ2NSkJCTo9LURfX0xJTlVYX0FSTV9BUkNI
X189NSAkKGNhbGwgCmNjLW9wdGlvbiwtbWFyY2g9YXJtdjV0ZSwtbWFyY2g9YXJtdjR0KQoKVGhl
IGVycm9yIGZyb20gdGhlIGNvbXBpbGVyIGlzOgoKY2MxOiBlcnJvcjog4oCYLW1mbG9hdC1hYmk9
aGFyZOKAmTogc2VsZWN0ZWQgYXJjaGl0ZWN0dXJlIGxhY2tzIGFuIEZQVQoKKE5vdGU6IHRoZSBl
cnJvciBpcyBvbmx5IHNob3duIGFmdGVyIHR3ZWFraW5nIHRoZSBgdHJ5LXJ1bmAgY29tbWFuZCBp
biAKInNjcmlwdHMvS2J1aWxkLmluY2x1ZGUiIHNvIHRoYXQgaXQgZG9lcyBub3Qgc2VuZCBlcnJv
ciBvdXRwdXQgdG8gCiIvZGV2L251bGwiLikKClRoYXQgZXJyb3Igc2VlbXMgdG8gYmUgYSBjaGFu
Z2UgaW4gYmVoYXZpb3VyIGJldHdlZW4gR0NDIDEwLnggYW5kIEdDQyAxMS54LgoKQXQgdGhlIHBv
aW50IGluIHRoZSBNYWtlZmlsZSB0aGF0IHRoZSBlcnJvciBvY2N1cnMsIHRoZSBgLW1zb2Z0LWZs
b2F0YCAKb3B0aW9uIGhhcyBub3QgYmVlbiBhZGRlZCB0byBgS0JVSUxEX0NQUEZMQUdTYCB5ZXQu
IFRoYXQgaXMgZG9uZSBmdXJ0aGVyIApkb3duIHRoZSBNYWtlZmlsZSBleGNlcHQgZm9yIGBDT05G
SUdfQ1BVX1Y4YC4gIEkgZ3Vlc3MgaXQgbmVlZHMgdG8gYmUgCmFkZGVkIHNvbWV3aGVyZSBiZWZv
cmUgcHJvYmxlbWF0aWMgbGluZXMgaW4gdGhlIE1ha2VmaWxlLiAgSSdtIG5vdCBzdXJlIAppZiBg
LW1zb2Z0LWZsb2F0YCBpcyBhbHNvIG5lZWRlZCBmb3IgNjQtYml0IEFSTXY4LCBidXQgdGhlIGVy
cm9yIApzdWdnZXN0cyBpdCBpcyByZXF1aXJlZCB0aGVyZSB0b28uCgotLSAKLT0oIElhbiBBYmJv
dHQgPGFiYm90dGlAbWV2LmNvLnVrPiB8fCBNRVYgTHRkLiBpcyBhIGNvbXBhbnkgICk9LQotPSgg
cmVnaXN0ZXJlZCBpbiBFbmdsYW5kICYgV2FsZXMuICBSZWdkLiBudW1iZXI6IDAyODYyMjY4LiAg
KT0tCi09KCBSZWdkLiBhZGRyLjogUzExICYgMTIgQnVpbGRpbmcgNjcsIEV1cm9wYSBCdXNpbmVz
cyBQYXJrLCApPS0KLT0oIEJpcmQgSGFsbCBMYW5lLCBTVE9DS1BPUlQsIFNLMyAwWEEsIFVLLiB8
fCB3d3cubWV2LmNvLnVrICk9LQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

