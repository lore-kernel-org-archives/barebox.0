Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAurG-0007qO-Q3
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:21:43 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D5D29100092A
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:21:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:21:08 +0100
Message-Id: <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150113061940.GA30554@ns203013.ovh.net>
References: <20150113061940.GA30554@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] defaultenv-2: fix misplace NV dir in env
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/avnet-zedboard/env/{init => }/nv/linux.bootargs.base | 0
 arch/arm/boards/guf-vincell/env/{init => }/nv/hostname               | 0
 arch/arm/boards/guf-vincell/env/{init => }/nv/linux.bootargs.base    | 0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename arch/arm/boards/avnet-zedboard/env/{init => }/nv/linux.bootargs.base (100%)
 rename arch/arm/boards/guf-vincell/env/{init => }/nv/hostname (100%)
 rename arch/arm/boards/guf-vincell/env/{init => }/nv/linux.bootargs.base (100%)

diff --git a/arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.base
similarity index 100%
rename from arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base
rename to arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.base
diff --git a/arch/arm/boards/guf-vincell/env/init/nv/hostname b/arch/arm/boards/guf-vincell/env/nv/hostname
similarity index 100%
rename from arch/arm/boards/guf-vincell/env/init/nv/hostname
rename to arch/arm/boards/guf-vincell/env/nv/hostname
diff --git a/arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base b/arch/arm/boards/guf-vincell/env/nv/linux.bootargs.base
similarity index 100%
rename from arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base
rename to arch/arm/boards/guf-vincell/env/nv/linux.bootargs.base
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
