Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f377.i.mail.ru ([185.5.136.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYgdr-0001H9-Kz
 for barebox@lists.infradead.org; Sat, 04 May 2013 17:53:05 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 04 May 2013 21:52:36 +0400
Message-ID: <1367689956.564722648@f377.i.mail.ru>
In-Reply-To: <20130504194937.47f53a82@skate>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367688229.463901062@f377.i.mail.ru>
 <20130504194937.47f53a82@skate>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAwLzddIEJhc2ljIHN1cHBvcnQgZm9yIE1hcnZlbGwg?=
 =?UTF-8?B?QXJtYWRhIDM3MC9YUCBTb0M=?=
To: =?UTF-8?B?VGhvbWFzIFBldGF6em9uaQ==?= <thomas.petazzoni@free-electrons.com>
Cc: =?UTF-8?B?TGlvciBBbXNhbGVt?= <alior@marvell.com>, barebox@lists.infradead.org, =?UTF-8?B?SmFzb24gQ29vcGVy?= <jason@lakedaemon.net>, =?UTF-8?B?RXplcXVpZWwgR2FyY2lh?= <ezequiel.garcia@free-electrons.com>, =?UTF-8?B?V2lsbHkgVGFycmVhdQ==?= <w@1wt.eu>

> On Sat, 04 May 2013 21:23:49 +0400, Alexander Shiyan wrote:
> 
> > I did not look carefully these patches but seems to me that to have
> > any configuration files outside /env is not good for barebox.
> 
> They are not configuration files used at runtime. They are
> configuration files used by the image construction utility to know how
> to create a bootable image for the target system. This image
> construction utility runs on the build machine, and is the new
> scripts/kwbimage tool introduced in this patch series.

Then it makes sense.
Do not understand the meaning of the initial post. Sorry.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
