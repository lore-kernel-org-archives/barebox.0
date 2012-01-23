Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RpRHB-0005jj-S9
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 21:18:06 +0000
Message-ID: <4F1DCE81.4070208@phytec.de>
Date: Mon, 23 Jan 2012 22:17:53 +0100
From: =?ISO-8859-1?Q?J=FCrgen_Kilb?= <j.kilb@phytec.de>
MIME-Version: 1.0
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
 <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
 <20120123104054.GR25622@game.jcrosoft.org>
In-Reply-To: <20120123104054.GR25622@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM pca-a-l1: fix board_init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe

On 23.01.2012 11:40, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:25 Fri 20 Jan     , Juergen Kilb wrote:
>> board_init was moved to pure_initcall. broken since:
>>
>> commit 0adce7ec683b4b325f51de4ac8892b32925d7ef8
>> Author: Sascha Hauer<s.hauer@pengutronix.de>
>> Date:   Sun Jan 15 21:11:17 2012 +0100
>>
>>      ARM omap3: move board_init to pure_initcall
>>
>>      board_init initializes the mux and sdram. For both there is no
>>      need to configure this so early. Move the code to a pure_initcall
>>      and remove the surrounding unneeded code.
>>
>>      Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
>>      Tested-by: Sanjeev Premi<premi@ti.com>
>>
>> Signed-off-by: Juergen Kilb<J.Kilb@phytec.de>
> can't you fix all in one patch?
I'v used separate patches because the break was created by two different =

commits and the other two doesn't depend on each other.
>> ---
>>   arch/arm/boards/phycard-a-l1/pca-a-l1.c |    8 +++++---
>>   arch/arm/mach-omap/Kconfig              |    1 -
>>   barebox_default_env.gz                  |  Bin 0 ->  2656 bytes
>>   3 files changed, 5 insertions(+), 4 deletions(-)
>>   create mode 100644 barebox_default_env.gz
> ???
ups.. have not seen this. Was a result of 'git add .'
> Best Regards,
> J.
greetings,
J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
