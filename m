Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f376.mail.ru ([217.69.141.18])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG7Zy-0002hS-QZ
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 12:48:20 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 14 Mar 2013 16:48:13 +0400
Message-ID: <1363265293.232415213@f376.mail.ru>
In-Reply-To: <1363263561.4022.37.camel@mars>
References: <1363263561.4022.37.camel@mars>
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
Subject: =?UTF-8?B?UmU6IE9tYXA0IERTUyBjbG9ja3M=?=
To: =?UTF-8?B?Q2hyaXN0b3BoIEZyaXR6?= <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

> Hi,
> 
>  Barebox crashes while reading a DSS register:
> 
>   $ md 0x48040000
>   unable to handle paging request at address 0x48040000
> 
> I suppose this is due to a turned off clock.
> 
> Any hints?

Probably this is a bug. I reproduced it.

Try to specify start & end address, like:
md -l 0x48040000-0x48040010

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
