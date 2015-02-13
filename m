Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM9JJ-0000Sr-Hf
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 06:01:16 +0000
Message-ID: <54DD9199.1090403@atmel.com>
Date: Fri, 13 Feb 2015 13:54:33 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mtd partition handling updates
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On 02/12/2015 04:54 PM, Sascha Hauer wrote:
> This series updates the mtd partition handling in barebox. It used
> to be too simple to create conflicting or inconsistent partitions on
> mtd devices. mtd partitions can be changed from board code, from the
> device tree, using addpart/delpart and with this series also with
> the newly created 'partitions' parameter for mtd devices. The
> informations are now kept in a consistent state, with each changed
> partition the partitions parameter is updated and when starting
> the kernel partitions in the device tree are also updated to the
> current partitioning.
> What's still missing is a way to store the partitioning somewhere
> in the environment, perhaps in a nonvolatile variable.
>
> Sascha
>
>
> The following changes since commit d7dc46d5d6f2c80d1719ef877df728457790ac45:
>
>    defaultenv: ignore barebox_zero_env (2015-02-11 08:34:29 +0100)
>
> are available in the git repository at:
>
>    git://git.pengutronix.de/git/barebox.git
>
> for you to fetch changes up to cd7feae00b43eeddcaeb229f861d0ddac93f91e2:
>
>    defaultenv-2: mtdparts-add: Use new partition parameter (2015-02-12 09:33:44 +0100)
>
> ----------------------------------------------------------------
> Sascha Hauer (17):
>        of: Add for_each_child_of_node_safe
>        mtd: core: add error checks
>        mtd: partitions: Use xstrdup
>        mtd: partitions: Add error check
>        mtd: Add partitions to list
>        mtd: nand: remove automatically created bb devices
>        move cmdline partition parsing code to separate file
>        cmdlinepart: Change SIZE_REMAINING to loff_t
>        cmdlinepart: make argument types safer
>        cmdlinepart: add function to parse a cmdline partition string
>        cmndlinepart: skip devname if partstr already contains it
>        mtd: forbid conflicting mtd partitions
>        mtd: Use flags parameter in mtd_add_partition
>        mtd: Add a partitions parameter to mtd devices
>        mtd: fixup device tree partitions
>        defaultenv-2: mtdparts-add: remove unused variable
>        defaultenv-2: mtdparts-add: Use new partition parameter

For the whole series, test OK with Doug's patch on sama5d4ek board.

Tested-by: Bo Shen <voice.shen@atmel.com>

>   commands/partition.c                          | 104 +------------
>   defaultenv/defaultenv-2-base/bin/mtdparts-add |  15 +-
>   drivers/mtd/core.c                            | 213 +++++++++++++++++++++++++-
>   drivers/mtd/nand/nand-bb.c                    |  16 +-
>   drivers/mtd/partition.c                       |  14 +-
>   include/cmdlinepart.h                         |  14 ++
>   include/linux/mtd/mtd.h                       |   5 +
>   include/nand.h                                |   7 +-
>   include/of.h                                  |   2 +
>   lib/Makefile                                  |   1 +
>   lib/cmdlinepart.c                             | 124 +++++++++++++++
>   11 files changed, 393 insertions(+), 122 deletions(-)
>   create mode 100644 include/cmdlinepart.h
>   create mode 100644 lib/cmdlinepart.c

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
