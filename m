Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBhp7-0000cL-Sm
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:34:14 +0000
Received: by mail-ee0-f46.google.com with SMTP id c13so1400963eek.33
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 01:33:51 -0800 (PST)
Message-ID: <52F4A87B.3030008@gmail.com>
Date: Fri, 07 Feb 2014 10:33:47 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] ARM: dove: sync with DT files from Linux
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On 02/05/2014 11:40 PM, Sebastian Hesselbarth wrote:
> This re-syncs Marvell Dove and Solidrun CuBox DT files with current
> files from Linux v3.14. Barebox-specific properties not yet backported,
> are kept, default led trigger is set to heartbeat.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Michael Grzeschik <mgr@pengutronix.de>
> Cc: barebox@lists.infradead.org
>
> fixup dts

Urgh ;)

> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
>   arch/arm/dts/dove-cubox.dts |  66 ++--
>   arch/arm/dts/dove.dtsi      | 806 +++++++++++++++++++++++++++++++-------------
>   2 files changed, 598 insertions(+), 274 deletions(-)
[...]

I have just read the discussion about DT maintainance. You want me to
rework this patch to separate the barebox specific modifiations to a
new dts?

Also, the match of_modaliases patches will render one modification
redundant.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
