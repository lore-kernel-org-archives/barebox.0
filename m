Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8jeb-0006FF-VV
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 12:26:50 +0000
Date: Thu, 20 Aug 2020 14:26:44 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1964884639.8285.1597926404532@mail.vodafone.de>
In-Reply-To: <3254031d-0a9d-42c5-2e26-b41095d52227@pengutronix.de>
References: <1196968959.8187.1597925911899@mail.vodafone.de>
 <3254031d-0a9d-42c5-2e26-b41095d52227@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: NULL pointer deref crash on barebox 2020.08.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org


> On August 20, 2020 at 2:21 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> 
> Hello Giorgio,
> 
> On 8/20/20 2:18 PM, Giorgio Dal Molin wrote:
> > Hi,
> > 
> > I've tried the current barebox v2020.08.0 on my imx7d module and it crashes
> > while executing the command:
> > 
> > imx7d: / cp /mnt/boot/kernel.img /dev/mmc1.fw_update
> > unable to handle NULL pointer dereference at address 0x00000000
> > pc : [<ffe6c2dc>]    lr : [<ffe6c2c0>]
> > sp : fffefcd0  ip : fffefcd0  fp : c00f8850
> > r10: ffe981ef  r9 : 00000000  r8 : ffe981ef
> > r7 : ffe98dcb  r6 : ffea60a8  r5 : ffe98dbd  r4 : c00ef1e8
> > r3 : 00000000  r2 : bfefb8e0  r1 : ffe98dbd  r0 : 00028888
> > Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> > 
> > no stack data available
> > 
> > 
> > I could track the problem down to a call to list_del(&inode->i_sb_list); in
> > fs/fs.c:iput(struct inode *inode):
> > 
> > void iput(struct inode *inode)
> > {
> > 	if (!inode)
> > 		return;
> > 
> > 	inode->i_count--;
> > 
> > 	if (!inode->i_count) {
> > 		list_del(&inode->i_sb_list);        <== this call segfaults
> > 		destroy_inode(inode);
> > 	}
> > }
> > 
> > I've checked that the struct list_head inode->i_sb_list has its .prev pointer NULL
> > and that's the immediate reason why I get a segfault (at WRITE_ONCE(prev->next, next)
> > in __list_del(prev, next); what I don't know is whether a NULL .prev is OK and the error
> > is a missing test in __list_del() or if a NULL .prev is already wrong.
> 
> What kind of file system is mounted at /mnt/boot?
> 

Hi

it's a squashfs:

imx7d: / mount 
none on / type ramfs
none on /dev type devfs
/dev/mmc1.userland on /mnt/userland type squashfs
/dev/mmc1.boot on /mnt/boot type squashfs

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
