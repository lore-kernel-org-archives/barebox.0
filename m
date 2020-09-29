Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNFGt-0002im-CY
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 13:02:20 +0000
MIME-Version: 1.0
Date: Tue, 29 Sep 2020 15:02:15 +0200
From: robin <robin@protonic.nl>
Message-ID: <af59b1cfcfbb69990ddc84d9d454f44e@protonic.nl>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: robin@protonic.nl
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Using bootspec with RAUC and redundant partitions
To: ejo@pengutronix.de
Cc: barebox@lists.infradead.org, david@protonic.nl

Hi All,

Can anyone help me determine where to place the bootspec data in a 
system
with redundant partitions for kernel and rootfs?

We're migrating from scripts in env/boot for 'system0' and 'system1', to
bootspec. We're using bootchooser combined with the state framework to 
determine
which target needs to be booted.

Our partition table (relevant partitions):
  mmc2.0: kernel.0
  mmc2.1: kernel.1
  ...
  mmc2.4: rootfs.0
  mmc2.5: rootfs.1

Looking into the bootspec, we could add an additional 'boot' partition 
but this
breaks redundancy, and feels trivial since we have the kernel 
partitions.

But adding the loader/entries to the kernel partitions probably requires 
us to
generate them runtime (Rauc post-install?). Since Rauc determines which 
kernel
partition will be written with the contents of 'kernel' image in a 
bundle the
bootspec can't be determined at build time.

Is there a door number 3 or am I missing something here?

Best regards,
Robin van der Gracht

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
