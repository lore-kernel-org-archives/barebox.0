Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f302.i.mail.ru ([128.140.169.166])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vap5Z-0000fn-4b
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 15:50:46 +0000
Received: from mail by f302.i.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1Vap5B-0007ae-6N
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 19:50:21 +0400
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 28 Oct 2013 19:50:21 +0400
Message-ID: <1382975421.40060558@f302.i.mail.ru>
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
Subject: =?UTF-8?B?RFQgJiYgaS5NWCBVU0I=?=
To: barebox@lists.infradead.org

Hello.

I am trying to migrate i.MX51 ConnectCore board for use DT.
Most stuff are done but I cannot understand how USB subsystem
works with devicetree.

First, why barebox uses own "barebox,dr_mode" and "barebox,phy_type"
properties instead of use kernel "dr_mode" and "phy_type"?

Second, how specify flags for USB ports, for example MXC_EHCI_INTERNAL_PHY?
In DT case we can not do it and as result desired port not functional...

Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
