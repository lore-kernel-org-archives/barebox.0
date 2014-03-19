Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQEd6-0007DK-1a
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 11:25:52 +0000
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id CC949E0DEB
 for <barebox@lists.infradead.org>; Wed, 19 Mar 2014 11:25:26 +0000 (GMT)
Message-ID: <53297EA7.7010605@ge.com>
Date: Wed, 19 Mar 2014 11:25:27 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1394556858-27282-1-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394556858-27282-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] ppc: P2020RDB: add persistent configuration support
To: barebox@lists.infradead.org

Hello,
I noticed this single patch has not been applied yet while the large
P1022DS patch-set sent later has been.

Let me know whether there is any issue and I will fix it immediately?

Cheers,
Renaud

On 11/03/2014 16:54, Renaud Barbier wrote:
> Add an environment partition and support commands to have persistent
> boot configuration for Linux.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/boards/freescale-p2020rdb/env/bin/init |  2 ++
>  arch/ppc/boards/freescale-p2020rdb/env/config   |  2 ++
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |  9 +++++----
>  arch/ppc/configs/p2020rdb_defconfig             | 21 ++++++++++++++++++++-
>  4 files changed, 29 insertions(+), 5 deletions(-)
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
