Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XKQUt-0006wK-33
 for barebox@lists.infradead.org; Thu, 21 Aug 2014 11:25:40 +0000
Message-ID: <53F5D712.5040505@phytec.de>
Date: Thu, 21 Aug 2014 13:25:06 +0200
From: Jan Weitzel <j.weitzel@phytec.de>
MIME-Version: 1.0
References: <1406876465-27832-1-git-send-email-j.weitzel@phytec.de>
 <20140804192141.GO23235@pengutronix.de>
In-Reply-To: <20140804192141.GO23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] commands: of_dump switch to get fixed devictree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 04.08.2014 um 21:21 schrieb Sascha Hauer:

> Hi Jan,
>
> On Fri, Aug 01, 2014 at 09:01:05AM +0200, Jan Weitzel wrote:
>> Add a switch to get the devicetree processed by the registered fixups.
>> This is also whats the kernel gets.
> This is a very useful option.
>
>> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
>> ---
>> v2:	fix CMD OPS
>>
>>   commands/of_dump.c |   12 ++++++++++--
>>   1 files changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/commands/of_dump.c b/commands/of_dump.c
>> index cafde07..1b487c7 100644
>> --- a/commands/of_dump.c
>> +++ b/commands/of_dump.c
>> @@ -34,16 +34,20 @@ static int do_of_dump(int argc, char *argv[])
>>   {
>>   	int opt;
>>   	int ret;
>> +	int fix = 0;
>>   	struct device_node *root = NULL, *node, *of_free = NULL;
>>   	char *dtbfile = NULL;
>>   	size_t size;
>>   	const char *nodename;
>>   
>> -	while ((opt = getopt(argc, argv, "f:")) > 0) {
>> +	while ((opt = getopt(argc, argv, "Ff:")) > 0) {
>>   		switch (opt) {
>>   		case 'f':
>>   			dtbfile = optarg;
>>   			break;
>> +		case 'F':
>> +			fix = 1;
>> +			break;
>>   		default:
>>   			return COMMAND_ERROR_USAGE;
>>   		}
>> @@ -77,6 +81,9 @@ static int do_of_dump(int argc, char *argv[])
>>   		root = of_get_root_node();
>>   	}
>>   
>> +	if (fix)
>> +		of_get_fixed_tree(root);
> of_get_fixed_tree() returns an allocated flat device tree. You should
> free it.
>
> As an alternative you could call of_fix_tree() instead.
>
> Also I'm not sure about the API. of_fix_tree manipulates the internal
> tree, so when you use of_dump -F once you'll always get the fixed tree
> afterwards, even when called without -F. This might be confusing.

I'll post a patch that use of_flatten_dtb / of_unflatten_dtb to create a copy of the internal devicetree.

> We have the same problem elsewhere in the tree though, right now I'm
> unsure what to do about it. And then again, I'm on holiday, so I won't
> do anything about it this month ;)

Have a nice holday :)

Jan

>
> Sascha
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
