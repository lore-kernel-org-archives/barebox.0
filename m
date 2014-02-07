Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBpUd-0002bI-2x
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 17:45:35 +0000
Received: by mail-ee0-f52.google.com with SMTP id e53so1668475eek.25
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 09:45:13 -0800 (PST)
Message-ID: <52F51BA4.1050105@gmail.com>
Date: Fri, 07 Feb 2014 18:45:08 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391794973-32469-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391794973-32469-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391794973-32469-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 6/7] ARM: dove: sync with DT files from Linux
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On 02/07/2014 06:42 PM, Sebastian Hesselbarth wrote:
> This re-syncs Marvell Dove and Solidrun CuBox DT files with current
> files from Linux v3.14. Since barebox specific properties are now
> kept separated, we don't need to tweak them anymore.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Changelog:
> v1->v2:
> - split-off Linux DT

Sascha,

This is of course patch 7 of now 7 patches..

I can prepare a signed tag you can pull from if you struggle to
sort it out.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
