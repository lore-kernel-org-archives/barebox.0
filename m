Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx5MC-00014T-4t
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 07:02:38 +0000
From: <Oleg.Karfich@wago.com>
Date: Tue, 4 Sep 2018 07:02:16 +0000
Message-ID: <bd81894f-fe0d-a9b3-d5dd-fd4d1ecb61a3@wago.com>
References: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
 <1535706079-10439-4-git-send-email-oleg.karfich@wago.com>
 <20180904061232.agbtqsxaqemjd6b2@pengutronix.de>
In-Reply-To: <20180904061232.agbtqsxaqemjd6b2@pengutronix.de>
Content-Language: en-US
Content-ID: <EE71CD73AC3A714995FD76C619177A0C@WAGO.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 3/3] net: dhcp: add global variable for retries
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

On 04.09.2018 08:12, Sascha Hauer wrote:
> Hi Oleg,

Hi Sascha,

> 
> On Fri, Aug 31, 2018 at 09:01:32AM +0000, Oleg.Karfich@wago.com wrote:
>> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
>> ---
>>  net/dhcp.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/net/dhcp.c b/net/dhcp.c
>> index 6394397..92e0501 100644
>> --- a/net/dhcp.c
>> +++ b/net/dhcp.c
>> @@ -448,6 +448,7 @@ static char *global_dhcp_bootfile;
>>  static char *global_dhcp_oftree_file;
>>  static char *global_dhcp_rootpath;
>>  static char *global_dhcp_tftp_server_name;
>> +static char *global_dhcp_retries;
>>  static char *global_dhcp_option224;
>>  
>>  static void set_res(char **var, const char *res)
>> @@ -629,6 +630,7 @@ static int dhcp_global_init(void)
>>  	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
>>  	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
>>  	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
>> +	globalvar_add_simple_string("dhcp.retries", &global_dhcp_retries);
> 
> This adds a global variable, but it is not used, so this still has no
> effect. Turn this into globalvar_add_simple_int(). The int * you pass
> should then be used instead of DHCP_DEFAULT_RETRY to initialize
> dhcp_param.retries in dhcp_request().


Oh...there went something totaly wrong. Sorry for that...V2 is coming

> 
> Sascha
> 

Regard
Oleg
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
