Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbZU9-0005RL-Ux
 for barebox@lists.infradead.org; Sun, 12 May 2013 16:50:58 +0000
Date: Sun, 12 May 2013 18:50:32 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130512185032.3d99434a@skate>
In-Reply-To: <1368364146-6024-6-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-6-git-send-email-sebastian.hesselbarth@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/5] arm: mach-mvebu: rename Armada 370/XP core code
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sebastian Hesselbarth,

On Sun, 12 May 2013 15:09:06 +0200, Sebastian Hesselbarth wrote:
> There are more than Armada 370/XP in Marvell MVEBU SoC familiy. To avoid
> irritation with source file nameing, we rename setup source file for
> Armada 370/XP from core.c to armada-370-xp.c.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: barebox@lists.infradead.org
> ---
>  arch/arm/mach-mvebu/Makefile        |    4 +-
>  arch/arm/mach-mvebu/armada-370-xp.c |  142 +++++++++++++++++++++++++++++++++++
>  arch/arm/mach-mvebu/core.c          |  142 -----------------------------------
>  3 files changed, 144 insertions(+), 144 deletions(-)
>  create mode 100644 arch/arm/mach-mvebu/armada-370-xp.c
>  delete mode 100644 arch/arm/mach-mvebu/core.c

Acked-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

thought it would be nice to use git format-patch -M to enable rename
detection in Git, so that we see this is just a rename and not a
complete rewrite of the file.

Thanks!

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
