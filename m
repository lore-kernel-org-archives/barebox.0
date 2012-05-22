Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWem1-0005L2-Pu
 for barebox@lists.infradead.org; Tue, 22 May 2012 02:24:34 +0000
Message-ID: <4FBAF8E3.60903@signal11.us>
Date: Mon, 21 May 2012 22:24:35 -0400
From: Alan Ott <alan@signal11.us>
MIME-Version: 1.0
References: <1337615616-7209-1-git-send-email-alan@signal11.us>
 <20120521224429.GD28084@game.jcrosoft.org>
In-Reply-To: <20120521224429.GD28084@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 05/21/2012 06:44 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:53 Mon 21 May     , Alan Ott wrote:
>> print_menu_entry() in common/menu.c depeneds on process_escape_sequence().
>>
>> Signed-off-by: Alan Ott <alan@signal11.us>
>> ---
>>  common/Kconfig |    1 +
>>  1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 73d620a..ebb9400 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>>  config MENU
>>  	bool
>>  	prompt "Menu Framework"
>> +	depends on PROCESS_ESCAPE_SEQUENCE
>>  	help
>>  	   a menu framework that allow us to create list menu to simplify
>>  	   barebox and make it more user-frendly
> no the menu does not need this as I use it withouth hush
>

Jean-Christophe,

You're right. I just posted another patch which may work better.

Thanks!

Alan.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
