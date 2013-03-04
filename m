Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f40.mail.ru ([217.69.128.62])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbi0-0006Mo-FV
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:10:05 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 05 Mar 2013 00:10:02 +0400
Message-ID: <1362427802.171419274@f40.mail.ru>
In-Reply-To: <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
 <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IFtQQVRDSCA2LzZdIEFSTTogQWRkIHJlbG9jYXRhYmxlIGJpbmFyeSBz?=
 =?UTF-8?B?dXBwb3J0?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> For making the same binary executable on different SoCs which have
> different DRAM addresses we have to be independent of the compile
> time link address.
> 
> This patch adds relocatable binary support for the ARM architecture.
> With this two new functions are available. relocate_to_current_adr
> will fixup the binary to continue executing from the current position.
> relocate_to_adr will copy the binary to a given address, fixup the
> binary and continue executing from there.
> 
> For the PBL and the real image relocatable support can be enabled
> independently. This is done to (hopefully) better cope with setups
> where the PBL runs from SRAM or ROM and the real binary does not.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
...

Hello.

I just suggest put this new stuff under EXPERIMENTAL condition.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
