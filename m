Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f228.i.mail.ru ([94.100.178.214])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ve4EA-0001ri-HK
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 14:37:03 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 06 Nov 2013 18:36:38 +0400
Message-ID: <1383748598.3652648@f228.i.mail.ru>
In-Reply-To: <1383747881-15698-2-git-send-email-jbe@pengutronix.de>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-2-git-send-email-jbe@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxLzNdIEZQR0E6IGFkZCBhIHNpbXBsZSBwcm9ncmFtbWlu?=
 =?UTF-8?B?ZyBoYW5kbGVyIGZyYW1ld29yaw==?=
To: =?UTF-8?B?SnVlcmdlbiBCZWlzZXJ0?= <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

> This framework handles a list of registered FPGA programming handlers
> to unify a firmware programming interface by hiding the details how
> to program a specific FPGA in its handler.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Seems this can be used not only for FPGA, so I suggest remove all FPGA_-prefix in
this framework. Maybe "firmware" is more flexible name here?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
