Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SWf1i-0005TE-1T
 for barebox@lists.infradead.org; Tue, 22 May 2012 02:40:47 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id ACFD3DC1523
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 04:42:42 +0200 (CEST)
References: <1337615616-7209-1-git-send-email-alan@signal11.us>
 <20120521200614.GG30400@pengutronix.de>
In-Reply-To: <20120521200614.GG30400@pengutronix.de>
Mime-Version: 1.0 (1.0)
Message-Id: <27196FB3-68EB-4583-9AF3-B256AE562D72@jcrosoft.com>
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 May 2012 10:40:26 +0800
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
Subject: Re: [PATCH] common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alan Ott <alan@signal11.us>

Hi

Please revert break my work on at91bootstrap where we use the menu without any shell support

And the does work with or without hush support

Best Regards,
J.

On May 22, 2012, at 4:06 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Alan,
> 
> On Mon, May 21, 2012 at 11:53:36AM -0400, Alan Ott wrote:
>> print_menu_entry() in common/menu.c depeneds on process_escape_sequence().
>> 
>> Signed-off-by: Alan Ott <alan@signal11.us>
> 
> Applied, thanks
> 
> Sascha
> 
>> ---
>> common/Kconfig |    1 +
>> 1 files changed, 1 insertions(+), 0 deletions(-)
>> 
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 73d620a..ebb9400 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>> config MENU
>>    bool
>>    prompt "Menu Framework"
>> +    depends on PROCESS_ESCAPE_SEQUENCE
>>    help
>>       a menu framework that allow us to create list menu to simplify
>>       barebox and make it more user-frendly
>> -- 
>> 1.7.0.4
>> 
>> 
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
