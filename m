Delivery-date: Wed, 23 Mar 2022 09:04:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWvyz-003QW8-OS
	for lore@lore.pengutronix.de; Wed, 23 Mar 2022 09:04:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWvz2-0000TA-4q
	for lore@pengutronix.de; Wed, 23 Mar 2022 09:04:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0XLSGo5YunE3BMK06BhoQulmc8jd3eF0GVgwl5VhK0=; b=rLqZcHFr8unMmv
	KWnFlmNIBBteb0OLe7qDZDSOPrpCwY0QLyCPXHjkFOIuvCuuv54JI2/fvwcnJIwc1+ldK58Hbf1wB
	oa30AzlpRXufaKqFf029Ug6O6pifMXiPveHYlwYhM+BUjBjXcGks8NPlA9FRWb9bDFZcgWt/s7FZo
	fy5cFaei1JkcrbGDYhLbblpY9x/Y7CZQ4kreisAz3xgdj8mAwEVMLyW4ElaZw245Zq8bkRuw7dcR3
	553JteX2qK+8Oc51db7UU2pxkffUnYhpmO5mqjoc3KoheYjtl27TRd0J1DJdFFxPmBQG+o7t7i6P4
	vT4sw0AcGMUU12heWs9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWvxk-00D2qD-Ji; Wed, 23 Mar 2022 08:03:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWvxf-00D2pM-L7
 for barebox@lists.infradead.org; Wed, 23 Mar 2022 08:03:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nWvxc-0000P8-5m; Wed, 23 Mar 2022 09:03:16 +0100
Message-ID: <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
Date: Wed, 23 Mar 2022 09:03:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_010319_717148_740274BD 
X-CRM114-Status: GOOD (  27.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Aw: Re: Board code with 2 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgRnJhbmssCgpPbiAyMy4wMy4yMiAwODo0NywgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiBI
aQo+IAo+IHRoYW5rcyBmb3IgeW91ciBmYXN0IGFuZCBkZXRhaWxlZCBhbnN3ZXIuCj4gYWZhaWsg
dmVuZG9yIGhhdmUgbm90IGNoYW5nZWQgdGhlIHNhcmFkYy1kZXRlY3Rpb24gKGJlY2F1c2UgdjAw
IHdhcyBub3QgcHVibGljKSwgc28gdjAwIGhhcyBzYW1lIHZhbHVlIGFzIHYxLjAgYW5kIGkgY2Fu
bm90IGRldGVjdCBkaWZmZXJlbmNlIHRoZXJlLiBNYXliZSB0aGVyZSBpcyBhbm90aGVyIHdheSB0
byBkZXRlY3QgKG1heWJlIGJhc2VkIG9uIGdtYWMgb3IgYW55IGhhcmR3YXJlLWNoYW5nZSksIGJ1
dCBmb3Igbm93IGkgdXNlZCBsYXN0IG9wdGlvbiB5b3UndmUgbWVudGlvbmVkIChzZWNvbmQgZW50
cnkgZnVuY3Rpb24pLgoKSWYgaXQncyBqdXN0IHByZS1wcm9kdWN0aW9uIEhXLCBpdCdzIG5vdCB3
b3J0aCBpdCB0byBkeW5hbWljYWxseSBkZXRlY3QsIEkgYWdyZWUuCgo+IEhhdmUgaXQgaW1wbGVt
ZW50ZWQgbGlrZSBrb250cm9uLXNhbXg2aSAoYm90aCBkdHMgY3VycmVudGx5IHNhbWUpLCBpdCBj
b21waWxlcywgY2FuIHlvdSB0YWtlIGEgcXVpY2sgbG9vayBpZiBpIGRpZCBpdCByaWdodD8KPiAK
PiBodHRwczovL2dpdGh1Yi5jb20vZnJhbmstdy9iYXJlYm94LXIycHJvL2NvbW1pdC9kZWFmN2E4
ZWVkNzU3NWUzNWMxNzgwN2FhMGE0MzIzNjMxMjJiMDMzCgpMb29rcyBvayB0byBtZS4gTml0cGlj
azogVXNpbmcgX19kdGJfel8gaW5zdGVhZCBvZiBfX2R0Yl8gYW5kIHNlbGVjdGluZyBBUk1fVVNF
X0NPTVBSRVNTRURfRFRCCndpbGwgZGVjcmVhc2UgYmFyZWJveCBzaXplIGEgYml0LgoKPiB0aGlz
IGlzIG5vdCBpbnRlbmRlZCB0byBiZSB1cHN0cmVhbWVkLCBidXQgZm9yIG1lIHRvIGZpeCB1cHN0
cmVhbSB3aXRoIHYxIGNvbmZpZyAod2hlbiBpIGdldCB0aGUgYm9hcmQpIGFuZCBzdGlsbCB1c2lu
ZyB2MDAgYm9hcmQuCgpJZiB2MDAgaXMgbm90IHB1YmxpY2x5IGF2YWlsYWJsZSwgaXQgd291bGQg
YmUgbmljZSBpZiB5b3UgY291bGQgcmVwbGFjZSB0aGUgZXhpc3RpbmcKdjAwIHN1cHBvcnQgd2l0
aCB2MDEgb25jZSB5b3UgY2FuIHRlc3QgaXQuCgpDaGVlcnMsCkFobWFkCgo+IAo+IHJlZ2FyZHMg
RnJhbmsKPiAKPiAKPj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAyMi4gTcOkcnogMjAyMiB1bSAxODoz
NCBVaHIKPj4gVm9uOiAiQWhtYWQgRmF0b3VtIiA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Cj4+
IEFuOiBmcmFuay13QHB1YmxpYy1maWxlcy5kZSwgYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4+IEJldHJlZmY6IFJlOiBCb2FyZCBjb2RlIHdpdGggMiBkdHMKPj4KPj4gSGVsbG8gRnJhbmss
Cj4+Cj4+IE9uIDIyLjAzLjIyIDE4OjIzLCBGcmFuayBXdW5kZXJsaWNoIHdyb3RlOgo+Pj4gSGks
Cj4+Pgo+Pj4gSSBnZXQgaW5mb3JtYXRpb24gdGhhdCBuZXcgaGFyZHdhcmUgcmV2aXNpb24gb2Yg
YnBpLXIyIHBybyBoYXMgc29tZSBkaWZmZXJlbmNlcyB0byB0aGUgdmVyc2lvbiBpIHVwc3RyZWFt
ZWQuIElzIGl0IHBvc3NpYmxlIHRvIGFkZCBhIG5ldyBkdHMgYW5kIHVzZSBzYW1lIGJvYXJkIGNv
ZGU/Cj4+Pgo+Pj4gSG93IGNhbiBpIGNob29zZSBiZXR3ZWVuIHRoZSAyIGR0cyBvbiBidWlsZCAo
a2NvbmZpZyBvcHRpb24pPwo+Pgo+PiBJbiBhbnkgY2FzZSwgZG9uJ3QgYWRkIGEgbmV3IEtjb25m
aWcgb3B0aW9uLiBUaGUgZXhpc3Rpbmcgb25lIHN1ZmZpY2VzLgo+Pgo+Pj4gQWZhaWsgdGhlIG5h
bWUgb2YgZHRiIGlzIGhhcmRjb2RlZCBpbiBsb3dsZXZlbC5jIFsxXQo+Pj4KPj4+IERpZmZlcmVu
Y2VzIGFyZSBpb2RvbWFpbnMgKG5vdCBkZWZpbmVkIGluIGJhcmVib3gsYnV0IGxpbnV4KSBhbmQg
Z21hYy1jb25maWcgKGdtYWNzIHN3YXBwZWQgYW5kIGRpZmZlcmVudCBzZXR0aW5ncykuCj4+Pgo+
Pj4gQ3VycmVudGx5IGkgaGF2ZSBub3QgeWV0IHRoZSBuZXcgYm9hcmQgZm9yIHRlc3RpbmcsYnV0
IHRoZW4gaSB3YW50IHRvIHNlbmQgcGF0Y2hlcyBmb3IgbGludXggYW5kIGJhcmVib3guCj4+Pgo+
Pj4gWzFdIGh0dHBzOi8vZ2l0LnBlbmd1dHJvbml4LmRlL2NnaXQvYmFyZWJveC90cmVlL2FyY2gv
YXJtL2JvYXJkcy9yb2NrY2hpcC1yazM1NjgtYnBpLXIycHJvL2xvd2xldmVsLmMjbjI0Cj4+Cj4+
IElzIGl0IHBvc3NpYmxlIHRvIGRldGVjdCB3aGljaCBib2FyZCBpcyBiZWluZyB1c2VkPwo+PiBJ
ZiBzbywgYmVzdCBwcmFjdGljZSBpcyB0byBoYXZlIGJhcmVib3ggdGhlIHNhbWUgaW1hZ2UgZm9y
IGJvdGgKPj4gYW5kIGRldGVjdCBib2FyZCB0eXBlIGF0IHJ1bnRpbWUuCj4+IEhlcmUncyBhbiBl
eGFtcGxlIGRvaW5nIGl0IGluIGxvd2xldmVsLmM6Cj4+IGFyY2gvYXJtL2JvYXJkcy9zdG0zMm1w
MTV4eC1ka3gvbG93bGV2ZWwuYwo+Pgo+PiBJZiB5b3UgbmVlZCBtb3JlIGJhcmVib3ggaW5mcmFz
dHJ1Y3R1cmUgdGhhbiB3aGF0J3MgYXZhaWxhYmxlIGluIHRoZSBib290bG9hZGVyCj4+IHRvIGRl
dGVjdCBib2FyZCB0eXBlLCB5b3UgY291bGQgZS5nLiByZXdyaXRlIGdtYWMtY29uZmlnIGluIGJh
cmVib3ggYm9hcmQgY29kZQo+PiBhZnRlciBkZXRlY3Rpb24uCj4+Cj4+IElmIHRoZXJlIGlzIG5v
IHdheSB0byBkeW5hbWljYWxseSBkZXRlY3Qgd2hpY2ggYm9hcmQgdmFyaWFudCBiYXJlYm94IGlz
IHJ1bm5pbmcKPj4gb24sIGp1c3QgZHVwbGljYXRlIHRoZSBlbnRyeSBwb2ludCBpbiB0aGUgc2Ft
ZSBmaWxlIGFuZCBjaGFuZ2UganVzdCB0aGUgZGV2aWNlCj4+IHRyZWUuIFRoZW4gZXh0ZW5kIGlt
YWdlcy9NYWtlZmlsZS5yb2NrY2hpcCB0byByZWZlcmVuY2UgdGhlIG5ldyBlbnRyeSBwb2ludAo+
PiBhbmQgYmFyZWJveCBidWlsZCB3aWxsIGdlbmVyYXRlIGFuIGltYWdlIGZvciBlYWNoIGJvYXJk
LiBTZWUgZm9yIGV4YW1wbGU6Cj4+Cj4+IGFyY2gvYXJtL2JvYXJkcy9rb250cm9uLXNhbXg2aS9s
b3dsZXZlbC5jCj4+Cj4+Cj4+IENoZWVycywKPj4gQWhtYWQKPiAKPiAKCgotLSAKUGVuZ3V0cm9u
aXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0
cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAg
ICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQg
SGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01
NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

