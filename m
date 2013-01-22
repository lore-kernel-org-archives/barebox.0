Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f243.mail.ru ([94.100.178.218])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxaVe-0002yJ-R8
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 09:51:15 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 22 Jan 2013 13:51:12 +0400
Message-ID: <1358848272.137736139@f243.mail.ru>
In-Reply-To: <1358848131.3996.5.camel@coredoba.hi.pengutronix.de>
References: <1358847900.233899647@f243.mail.ru>
 <1358848131.3996.5.camel@coredoba.hi.pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IE1lbW9yeSBzaXplIGlzc3Vl?=
To: =?UTF-8?B?SmFuIEzvv71iYmU=?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Tue, 2013-01-22 at 13:45 +0400, Alexander Shiyan wrote:
> > Hello.
> > 
> > I found a discrepancy between the size of memory in the system and
> > report by meminfo.
> > In the following example, the system registered 512M, but the meminfo
> > shows only 256M.
> > Error or so and originally intended?
> > 
> > barebox@i.MX51:/ devinfo mem0
> > resources:
> > num   : 0
> > name  : ram0
> > start : 0x90000000
> > size  : 0x20000000
> > driver: mem
> > bus: platform
> > 
> > no info available for mem0
> > no parameters available
> > barebox@i.MX51:/ meminfo
> > max system bytes =     245760
> > system bytes     =     245760
> > in use bytes     =     223200
> 
> This is 240kiB, not 256MiB. As meminfo shows only the memory used by
> barebox, this is should not be the same as the SDRAM size.
Ahh, yes. Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
