Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x232.google.com ([2607:f8b0:4001:c0b::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQL3D-0004Pn-8S
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 23:07:40 +0000
Received: by mail-it0-x232.google.com with SMTP id m194-v6so5671497itg.2
 for <barebox@lists.infradead.org>; Tue, 05 Jun 2018 16:07:28 -0700 (PDT)
MIME-Version: 1.0
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Wed, 6 Jun 2018 01:07:27 +0200
Message-ID: <CACvFaDeA6k7d=1hOxCkOo1cXoxB566S3249XhZk3-zSNkQU3ag@mail.gmail.com>
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
Subject: Oftree from memory and access to start arguments
To: barebox@lists.infradead.org

Hi,

I'm working on a functionality to load a device tree with oftree from
memory. The use case is like raspberry platform they have his own
device tree for linux kernel. If I known the address (config.txt), I
will load this from memory and read out the dynamic linux args and use
other overlays for states with bootchoiser and boot the kernel
correctly.

On raspberry, I can write the device-tree to a memory address with
config.txt. It would be nice, if I can access to barebox (start.c)
main arguments, while the raspberry pi load barebox like a linux
kernel and give him the device-address on r2.

I'm not sure if the access to the arguments really wanted, so I do
that only with fixed address. In other case, I don't see how I could
access to this arguments.

The idea is to have a function like `oftree -l 0x100`. Extended maybe
a global variable with the memory address, passed from start.

Anyway it work also with config.txt:
device_tree_address=0x100

Greets
Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
