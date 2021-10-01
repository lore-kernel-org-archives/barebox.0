Delivery-date: Fri, 01 Oct 2021 14:18:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWHUw-0007Nl-Co
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 14:18:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWHUu-0004eB-W7
	for lore@pengutronix.de; Fri, 01 Oct 2021 14:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=umDKO+NscKhamcI+kZTWN+8EE+ApY5F1DWo1YlcnbvI=; b=KUhI+bF391b1nZ+0apnZUzhO4b
	S6ijs1DXzR/1pr8qKN5NKhdg17OQlY0DQYZFc1pZbdwjwKvyNVdb13v38bef1lWNh6Q5DM/dzTEd4
	GnAIGY3qZWi7Ve5+UjqrJqo1D6iFn9Vh/mcWHVrOwJnd7fonBtJ1WkI+klhfRNr0+GbcxAOeRmGW0
	JNzLM8lu6biiB+FfSlJkmG2vXVIPznylztY88TN8n1nuLD2slPhTGzsX68QiXqwy7vo36MaHFtMAY
	5l14+8F9UzdNb+Uw/o69I2IACuESb0iYMEihqHngEv7SLsDKXyLhdC4THUng3tmGeAgpZn+tWjsyY
	e6X3X6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWHTU-000GM5-Vx; Fri, 01 Oct 2021 12:17:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWHQd-000F78-9G
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 12:14:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWHQa-00041J-W6; Fri, 01 Oct 2021 14:14:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWHQa-0001Wd-7Q; Fri, 01 Oct 2021 14:14:12 +0200
Date: Fri, 1 Oct 2021 14:14:12 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211001121412.GS24834@pengutronix.de>
References: <20210924031446.1515172-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210924031446.1515172-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:13:52 up 225 days, 15:37, 137 users,  load average: 0.11, 0.19,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_051415_384834_533A0DBE 
X-CRM114-Status: GOOD (  24.83  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] ddr: imx8m: Rework ddrphy code and fix DDR-1067 on
 iMX8MM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBTZXAgMjMsIDIwMjEgYXQgMDg6MTQ6NDZQTSAtMDcwMCwgVHJlbnQgUGllcGhvIHdy
b3RlOgo+IFRoaXMgY29kZSBjb3VsZCBub3QgZGVjaWRlIGlmIGl0IHdhcyB1c2luZyBzcGVlZHMg
aW4gSHosIG9yIE1Ieiwgb3IganVzdAo+IGNvbnN0YW50cyB0aGF0IGlkZW50aWZ5IHNwZWNpZmlj
IHNwZWVkcy4KPiAKPiBSZXdvcmsgaXQgdG8gdXNlIHN5bWJvbGljIGNvbnN0YW50cyBmb3IgYWxs
IHNwZWVkcy4gIFVzZSBhcnJheXMKPiBmb3IgY29uZmlndXJhdGlvbnMgdmFsdWVzIGZvciBhbGwg
Y2FzZXMuICBUaGUgRERSIERSQU0gc3BlZWQgY29uc3RhbnRzCj4gd2lsbCBiZSB0aGUgYXJyYXkg
aW5kZXgsIHNvIHRoZSBsaW5lYXIgc2VhcmNoIGZvciB0aGUgY29uZmlndXJhdGlvbiBpcwo+IGVs
aW1pbmF0ZWQuCj4gCj4gRm9yIGlNWDhNTSB0eXBlIFNvQ3MgdXNpbmcgdGhlIGludGVnciBQTEwg
dGhlIHNwZWVkIEREUi0xMDY3IHdpdGggYSAyNjbihZQKPiBNSHogY2xvY2sgd2lsbCBub3cgd29y
ay4KPiAKPiBUaGUgaU04TVEgdHlwZSBTU0NHIFBMTCBTb0NzIHdvdWxkIHByZXZpb3VzbHkgc2ls
ZW50bHkgcHJvZ3JhbSB0aGUgUExMCj4gd2lsbCB6ZXJvIHZhbHVlcyBpZiBhIG5vbi1zdXBwb3J0
ZWQgRERSIHJhdGUgd2FzIHVzZWQuICBOb3cgdGhleSB3aWxsCj4gZ2VuZXJhdGUgYW4gZXJyb3Iu
Cj4gCj4gTm90ZSB0aGF0IHNvbWUgUExMIHRhYmxlcyBoYXZlIGVudHJpZXMgZm9yIHNwZWVkcyB0
aGF0IHRoZSBtYWluIGVudHJ5Cj4gcG9pbnQgZm9yIHRoZSBjb2RlIGRvZXMgbm90IHN1cHBvcnQs
IHNvIHRoZXkgY2FuJ3QgYWN0dWFsbHkgZXZlciBiZQo+IHVzZWQuICBUaGlzIGlzIG5vdCBmaXhl
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUcmVudCBQaWVwaG8gPHRwaWVwaG9AZ21haWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2Rkci9pbXg4bS9kZHJwaHlfdXRpbHMuYyB8IDMzMiArKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNDcgaW5zZXJ0aW9ucygr
KSwgMTg1IGRlbGV0aW9ucygtKQoKQXBwbGllZCwgdGhhbmtzCgpTYXNjaGEKCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAg
ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

