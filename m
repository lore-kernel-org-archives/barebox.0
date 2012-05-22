Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWqhk-0007y9-Vm
 for barebox@lists.infradead.org; Tue, 22 May 2012 15:08:58 +0000
Message-ID: <4FBBAC03.1000006@signal11.us>
Date: Tue, 22 May 2012 11:08:51 -0400
From: Alan Ott <alan@signal11.us>
MIME-Version: 1.0
References: <1337653364-31191-1-git-send-email-alan@signal11.us>
 <1337657537-15367-1-git-send-email-alan@signal11.us>
 <20120522092718.GE28084@game.jcrosoft.org>
In-Reply-To: <20120522092718.GE28084@game.jcrosoft.org>
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
Subject: Re: [PATCH v2] common: Make MENU select PROCESS_ESCAPE_SEQUENCE if
 HUSH_SHELL is selected
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 05/22/2012 05:27 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:32 Mon 21 May     , Alan Ott wrote:
>> print_menu_entry() in common/menu.c calls on process_escape_sequence() when
>> HUSH_SHELL is selected.
>>
>> Signed-off-by: Alan Ott <alan@signal11.us>
>> ---
>>  common/Kconfig |    1 +
>>  1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 73d620a..7cd0666 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>>  config MENU
>>  	bool
>>  	prompt "Menu Framework"
>> +	select PROCESS_ESCAPE_SEQUENCE if SHELL_HUSH
>>  	help
>>  	   a menu framework that allow us to create list menu to simplify
>>  	   barebox and make it more user-frendly
> you miss the point of the code
>
> the PROCESS_ESCAPE_SEQUENCE is optionnal and need to stay optionnal
> evenif Hush is enable

It's required if both HUSH_SHELL _and_ MENU are selected. The code in
common/menu.c looks like this:

                if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
                        process_escape_sequence(m->display,
m->display_buffer,
                                                m->display_buffer_size);
                        puts(m->display_buffer);
                } else {
                        puts(m->display);
                }

Thus, the configuration needs to say, if you turn on MENU (enabling
menu.c), then select PROCESS_ESCAPE_SEQUENCE if HUSH_SHELL is also
selected (because it will try to call process_escape_sequence()).

As I described in my other email, it's very easy to create a test case
which does not build.

Keep in mind, I'm talking about making a Kconfig which is correct for
the code as the code currently is. Maybe in the opinion of some (you?),
it is the code that should be different, not the configuration. If you
or someone else has a better idea how to fix this, that would be fine
too. Right now however, it is broken.

Alan.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
