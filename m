Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.ord1c.emailsrvr.com ([108.166.43.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkWXt-0004gJ-Q5
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 15:59:03 +0000
References: <65aaade8-4825-e310-5006-b86df5f72f81@mev.co.uk>
 <CAHQ1cqGmLGkHQXDOQgasp0naeX5NomG9iODJrx0veAb_ByNGzQ@mail.gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <1ea7152b-ac26-33aa-37db-6407a96d4381@mev.co.uk>
Date: Fri, 18 Jan 2019 15:58:56 +0000
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqGmLGkHQXDOQgasp0naeX5NomG9iODJrx0veAb_ByNGzQ@mail.gmail.com>
Content-Language: en-GB
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
Subject: Re: barebox state alias with same name as node doesn't work
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On 17/01/2019 21:10, Andrey Smirnov wrote:
> On Thu, Jan 17, 2019 at 8:16 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>>
>> Hi,
>>
>> All the examples of "barebox,state" compatible nodes I can find in
>> Barebox seem to follow this basic pattern:
>>
>> / {
>>     /* ... */
>>     aliases {
>>       /* ... */
>>       state = &state;
>>     };
>>     /* ... */
>>     state: state {
>>       magic = <0xdeadbeef>; /* or whatever */
>>       compatible = "barebox,state";
>>       /* ... */
>>     };
>>     /* ... */
>> };
>>
>> Note that the alias name is the same as the node name in the above example.
>>
>> However, when I try to follow that pattern for my own board, I get an
>> error (-EINVAL):
>>
>> ERROR: register_device: already registered state
[snip]
>> I'm currently using Barebox 2018.12.0, but I don't see any relevant
>> changes in Barebox 2019.01.0 or barebox-next.
>>
> 
> This should be fixed by:
> http://lists.infradead.org/pipermail/barebox/2018-November/035432.html
> I don't think it is a part of 2018.12.0, though

That explains it!  I've now updated to 2019.01.0 to pick up the change 
and it seems to work now.  Thanks for the help.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
