Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f358.mail.ru ([217.69.140.254])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVwx7-0001BY-Np
 for barebox@lists.infradead.org; Sat, 27 Apr 2013 04:41:38 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 27 Apr 2013 08:41:21 +0400
Message-ID: <1367037681.686814347@f358.mail.ru>
In-Reply-To: <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gRml4IGNjeG14NTEgU0RSQU0gc2l6ZSBkZXRlY3Rpb24=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> The following hopefully fixes your boards. I'm not that happy with
> the solution, but I can't think of something better.
> 
> Sorry for the inconvenience.

Yes, patchset is may help here. I can test this in a few days.
Unfortunately, some other boards can have an option
for different memory size, so I will try to create non-destructive
(and safe) algorithg to test memory as replacement of get_mem_size.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
