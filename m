Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwjoi-0000cw-EU
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 08:34:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id i16so20699582wrs.13
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2019 00:34:50 -0800 (PST)
References: <20190218155712.21254-1-tomaz.solc@tablix.org>
 <20190220085741.lbv5zsyv3ur5grl6@pengutronix.de>
 <67fcde46-447e-8c16-3a1e-d7106700904b@klevio.com>
 <20190220112815.un3mcqu37mhnnecq@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <504c499c-ff47-c172-1ad4-315106f3a8f6@klevio.com>
Date: Thu, 21 Feb 2019 09:34:47 +0100
MIME-Version: 1.0
In-Reply-To: <20190220112815.un3mcqu37mhnnecq@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] genenv: create a gcc-like .d file for depenencies.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 20. 02. 19 12:28, Sascha Hauer wrote:
> Right, I missed the environment snippet that is generated from
> CONFIG_DEFAULT_ENVIRONMENT_PATH which is generated at a different place.
> Please try this updated patch.

Thanks, as far as I can see this patch works correctly now.

I suggest adding a comment in defaultenv/Makefile that rebuilding the =

environment on every build is the intended behavior. It seems this was =

already once erroneously considered a bug (see commit 105201e0).

Best regards
Toma=B8

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
