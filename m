Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvLr9-0001dd-Ja
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:25:00 +0000
Received: by mail-we0-f180.google.com with SMTP id x48so2299011wes.25
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:24:36 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 13 Jun 2014 09:24:35 +0200
Message-ID: <CAJfOKBx4sQwC59SyZy7TD5+YAg+JCgQ1JeiJs1R8H9LNWy1SHA@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: CFI FLash on a 8 bits bus working ?
To: barebox <barebox@lists.infradead.org>

Hi,

As I'm working on a emulated CFI flash device for or1ksim (Openrisc
simulator) I choose to implement a CFI flash with a 8 bits data bus
connected to a 8 bits host bus.

As far as I can see, barebox cfi flash driver is broken for 8 bits devices.

Am I wrong ?

Anyone as ever used a 8 bits CFI chip with barebox ?

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
