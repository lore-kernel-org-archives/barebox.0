Delivery-date: Fri, 11 Jun 2021 14:09:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfyd-0005rk-EU
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 14:09:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfyc-00050x-9f
	for lore@pengutronix.de; Fri, 11 Jun 2021 14:09:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8HLC+4ajbtj1If7dVRH5y1ewhCJqbz8SAjadQ5BdBg=; b=F9qBMvUC9I6w1R
	HvdAEwGz651CZVp/eXZqLdqkgCL5hhR12WdxUC+PCX0jfvmXLnyNkUqbohyywe1NUghnwX50Mfau2
	WyandawOLab7xlJivTgVAkt/bn8vMSSixdZarsPLkRJQyyoufJ8XuP6qCG3yzBs+ZI/3QdD42c2TE
	9bzIif57JotQ73SMP4J0/wDTSjJLRKUi5yLkKFuuju4ZvaHVP28A32Ext+mZOScLU6WF/fV9xEPg6
	zVXpcgLdPPcszkT9bty0i3lz39/odamJAB9icFbD36rd/I6Az+DVG8l2Zm21oBvlxtNv9/+70s1bw
	HF+ECUbavoIf61MlDg7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrfxK-005Bpv-5I; Fri, 11 Jun 2021 12:08:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrfxB-005Bo6-QQ
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 12:08:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfxA-0004vt-Ga; Fri, 11 Jun 2021 14:08:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfxA-0007tS-4F; Fri, 11 Jun 2021 14:08:00 +0200
Date: Fri, 11 Jun 2021 14:08:00 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210611120800.GF20470@pengutronix.de>
References: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
 <20210611110857.GF22904@pengutronix.de>
 <202F658B-1D90-4215-9616-28237E491364@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202F658B-1D90-4215-9616-28237E491364@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:05:39 up 113 days, 15:29, 122 users,  load average: 0.49, 0.34,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_050801_896484_9C9DDEC8 
X-CRM114-Status: GOOD (  22.59  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Beaglebone Black defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBKdW4gMTEsIDIwMjEgYXQgMDE6NDU6NTFQTSArMDIwMCwgS29uc3RhbnRpbiBLbGV0
c2Noa2Ugd3JvdGU6Cj4gCj4gCj4gPiBPbiAxMS4gSnVuIDIwMjEsIGF0IDEzOjA4LCBTYXNjaGEg
SGF1ZXIgPHNoYUBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiAKPiA+IEhpIEtvbnN0aSwgbmlj
ZSB0byBzZWUgeW91IGhlcmUgOikKPiAKPiBIaSBTYXNjaGEgOi1EIE5pY2UgdG8gc2VlIHlvdSwg
dG9vLgo+IAo+ID4gVGhhdCdzIHRoZSBjb25maWcgZm9yIHRoZSBiZWFnbGVibyphcmQqLCBmb3Ig
dGhlIGJlYWdsZWJvKm5lKiB5b3UnbGwKPiA+IGhhdmUgdG8gdXNlIHRoZSBvbWFwX2RlZmNvbmZp
Zy4gVGhpcyBpcyB0aGUgY29uZmlnIGZvciBhbGwgb21hcC9hbTMzeHgKPiA+IGJvYXJkcy4gVGhl
IHJlc3VsdGluZyBpbWFnZSBpcyBpbWFnZXMvYmFyZWJveC1hbTMzeHgtYmVhZ2xlYm9uZS5pbWcu
Cj4gCj4gVGhhbmsuIFlvdS4gVmVyeS4gTXVjaC4KPiAKPiBFIHZvaWxhLCBzZWNvbmQgc3RhZ2Ug
aXMgZmluZToKPiAKPiBb4oCmXQo+IGJhcmVib3ggMjAyMS4wNS4wLTAwMDkzLWc3Njg5MDU1YTgg
IzUgRnJpIEp1biAxMSAxMzoyNDowMCBDRVNUIDIwMjEKPiAKPiAKPiBCb2FyZDogVEkgQU0zMzV4
IEJlYWdsZUJvbmUgYmxhY2sKPiBkZXRlY3RlZCAnQmVhZ2xlQm9uZSBCbGFja+KAmQo+IFvigKZd
Cj4gCj4gCj4gQW5kIGEgY29sb3VyZWQgY29tbWFuZCBwcm9tcHQhIEFyZSB5b3UgZ3V5cyBzZXJp
b3VzPyBOaWNlIQoKV2UncmUgbm90IGluIHRoZSA5MGllcyBhbnltb3JlLCBhcmUgd2U/IDspCgo+
IAo+IAo+ID4gTG9va3MgY29uc2lzdGVudC4gMHg0MDIwZjAxMCBpcyBPTUFQM19TUkFNX1NDUkFU
Q0hfU1BBQ0UgKyAweDEwIHVzZWQgaW4KPiA+IGJlYWdsZV9ib2FyZF9pbml0X3NkcmFtKCkuIEl0
IHNlZW1zIHlvdSBzdGFydCBhIGJpbmFyeSBmb3IgdGhlCj4gPiBiZWFnbGVib2FyZCBvbiB5b3Vy
IGJlYWdsZWJvbmUuCj4gCj4gQWxsIHlvdXIgYXNzdW1wdGlvbnMgYXJlIGNvcnJlY3QsIEkgaGF2
ZSBhIG5pY2UgYm9vdCBsb2FkZXItY29sb3VyZWQtcHJvbXB0IG5vdyBhbmQKPiB3aWxsIGZpZ3Vy
ZSBvdXQgbm93IHRvIGdpdmUgaXQgbXkga2VybmVsIHRvIGJvb3QuIEV4cGVjdCBtb3JlIHN0dXBp
ZCBxdWVzdGlvbnMgc29vbiA6LSkKPiAKPiBCdXQgeW91IGRvbuKAmXQgdGVsbCBtZSB5b3Uga25v
dyB0aGlzIGFkZHJlc3MgZnJvbSBicmFpbiBtdXNjbGUgbWVtb3J5PwoKSW5kZWVkIHRoYXQgYWRk
cmVzcyBsb29rZWQgc3VzcGljb3VzIHRvIG1lLCBidXQgSSBncmVwcGVkIHRoZSBzb3VyY2Vjb2Rl
CmZvciAweDQwMjBmMDEwIGFuZCAweDQwMjBmMCBhZnRlcndhcmRzLgoKU2FzY2hhCgotLSAKUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

