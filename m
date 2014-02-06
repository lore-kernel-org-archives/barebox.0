Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x230.google.com ([2607:f8b0:400e:c02::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBVr5-0002hF-5i
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 20:47:28 +0000
Received: by mail-pd0-f176.google.com with SMTP id w10so2183906pde.35
 for <barebox@lists.infradead.org>; Thu, 06 Feb 2014 12:47:04 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 6 Feb 2014 15:47:03 -0500
Message-ID: <CAO6XYUu7PyrjnT=c-t2RVZ51xZagtGXqQyFGYL9dpF2qLypt_w@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: re: net usb asix: read MAC from EEPROM on AX88772B
To: philipp.zabel@gmail.com
Cc: barebox@lists.infradead.org

Philipp,

I have just checked out the tip release of barebox and have been
playing with your added code for the ASIX88772B (which I find a bit
humorous, as I had just migrated almost EXACTLY the same code myself
from the Linux sources two days ago, before I noticed yours -- I had
even put the "read MAC from EE" code into the exact same function).

The bad news is, your patches and mine both behave identically and
neither works quite right.

Specifically, while the network will connect and it will pull a DHCP
address, it still gets tons of invalid lengths from asix_rx_fixup().
It also doesn't seem to work for much else beyond that.

Have you had any additional luck in getting it working "right" with the 88772B?

Basically, since we are both obviously working on it, I figured it
would make sense if we coordinated efforts a bit, so as to avoid
duplicated effort.

Thanks!
Michael Burkey

PS. the USB adapter I am using is a Sabrent NT-USBC from Newegg.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
