Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f50.google.com ([209.85.219.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9G33-0006zq-T5
 for barebox@lists.infradead.org; Sat, 23 Feb 2013 14:25:58 +0000
Received: by mail-oa0-f50.google.com with SMTP id l20so1454611oag.37
 for <barebox@lists.infradead.org>; Sat, 23 Feb 2013 06:25:55 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130223130153.GH1906@pengutronix.de>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
 <20130223130153.GH1906@pengutronix.de>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Sat, 23 Feb 2013 15:25:34 +0100
Message-ID: <CAHkwnC9qt7dUkyy8e3YhiGaOMZeb7De5Tmq7BOq-WAA4kRHj9w@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 next 0/2] defenv2: complete move config-board out of
 /env/init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 23, 2013 at 2:01 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Feb 22, 2013 at 11:10:40AM +0100, Fabio Porcedda wrote:
>> v2:
>>  - add patch 2/2 for telit-evk-pro3
>>
>> Fabio Porcedda (2):
>>   defenv2: comment setting default values in /env/config
>>   ARM at91 telit-evk-pro3: move config-board out of /env/init
>>
>>  arch/arm/boards/telit-evk-pro3/env/config-board      | 8 ++++++++
>>  arch/arm/boards/telit-evk-pro3/env/init/config-board | 8 --------
>>  defaultenv-2/base/config                             | 8 ++++----
>>  3 files changed, 12 insertions(+), 12 deletions(-)
>>  create mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
>>  delete mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board
>
> Applied, thanks. I decided to apply it to next though as I tend to be
> careful with changes to master.

Thanks, it's fine like that.

> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
