Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22c.google.com ([2607:f8b0:4002:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2QiR-0004O5-G6
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 22:42:36 +0000
Received: by mail-yw0-x22c.google.com with SMTP id t125so69412770ywc.1
 for <barebox@lists.infradead.org>; Thu, 03 Nov 2016 15:42:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 3 Nov 2016 15:42:13 -0700
Message-ID: <CAHQ1cqFuQdm8EykmLh7b589Y6VLw8Vr69_goSw5-oo5mBikJsw@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Nov 3, 2016 at 1:30 PM, Jose Luis Zabalza <jlz.3008@gmail.com> wrote:
> Hello everybody
>
> I have two iMX53 custom boards. They are the same board but 512MB vs
> 1GB RAM version.  Both boards are working with the same Uboot binary
> but I would like use Barebox.
>
> I have to be able to run Barebox on 1GB version but the same Barebox
> binary don't work on 512MB version.
>
> I use imx-usb-loader to put Barebox on the board. On 1GB version
> Barebox are working OK and load Linux kernel successfully. On 512MB
> Barebox are loaded successfully but don't work. lsusb tell me the
> board is working on Serial Download mode yet. No message is printed on
> the console.
>
> Do I have to set Barebox for work with different RAM size?
>

One of the first things Barebox does when it start is placing itself
at the end of RAM as well as reserving adjacent areas for stack and
heap. So while you don't strictly have to configure it for different
RAM sizes it _does_ need to know actual RAM size to be able to
calculate various addresses correctly.

To the best of my knowledge there are two ways that knowledge is passed along:

     1) Hardcore that knowledge in entry point code as a part of PBL
     2) Implement additional memory size detection logic

AFAIK all i.MX variants in latest master should fall under second
category, so different RAM sizes should be accounted for.

You might gain some additional insight into the problem if you enable
CONFIG_DEBUG_LL (and route it to appropriate port) in "Debugging" menu
of menuconfig.

Hope this helps.

Regards,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
