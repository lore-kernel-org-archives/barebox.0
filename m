Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x236.google.com ([2607:f8b0:4002:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2OeY-0007Tg-3I
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 20:30:28 +0000
Received: by mail-yw0-x236.google.com with SMTP id h14so65318477ywa.2
 for <barebox@lists.infradead.org>; Thu, 03 Nov 2016 13:30:05 -0700 (PDT)
MIME-Version: 1.0
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Thu, 3 Nov 2016 21:30:03 +0100
Message-ID: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
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
Subject: Configure RAM size on iMX53 board
To: barebox@lists.infradead.org

Hello everybody

I have two iMX53 custom boards. They are the same board but 512MB vs
1GB RAM version.  Both boards are working with the same Uboot binary
but I would like use Barebox.

I have to be able to run Barebox on 1GB version but the same Barebox
binary don't work on 512MB version.

I use imx-usb-loader to put Barebox on the board. On 1GB version
Barebox are working OK and load Linux kernel successfully. On 512MB
Barebox are loaded successfully but don't work. lsusb tell me the
board is working on Serial Download mode yet. No message is printed on
the console.

Do I have to set Barebox for work with different RAM size?

Thanks in advance.

P.D. I don't use (yet) device tree with Barebox. The DCD table are the
same on both board.


-- 
jlz.3008  a t  gmail.com
Linux Counter 172551
https://linuxcounter.net/cert/172551.png

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
