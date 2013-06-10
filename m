Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f150.mail.ru ([94.100.178.200])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um5Z6-0007zw-8i
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 17:07:33 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 10 Jun 2013 21:07:08 +0400
Message-ID: <1370884028.154515180@f150.mail.ru>
In-Reply-To: <51B6066A.5020801@knowtrek.com>
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com>
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
Subject: =?UTF-8?B?UmVbMl06IGhvdyB0byBmbGFzaCBiYXJlYm94IGFuZCBzZXQgcm9vdCB2YXJp?=
 =?UTF-8?B?YWJsZT8gLSBiYXJlYm94IGlzIGdvbmUgOig=?=
To: =?UTF-8?B?QWRhbSBGdXJtYW5jenVr?= <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

> One thing to add:
> 
> I managed to run tftpd-hpa server on my debian box and tried to update
> kernel to nor0.kernel. I run:
...
> flashing barebox.bin to /dev/nor0.kernel
> 
> Unknown command 'tftp' - try 'help'

Seems tftp command is not compiled in.
Ensure that you have CONFIG_CMD_TFTP in your .config.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
