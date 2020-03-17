Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7Rl-00071a-Ne
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 08:19:35 +0000
Date: Tue, 17 Mar 2020 09:19:29 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
Message-ID: <645334065.10446584.1584433169193.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200317073544.GA31188@ravnborg.org>
References: <20200316110008.2909-1-cleger@kalray.eu>
 <20200317073544.GA31188@ravnborg.org>
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
Subject: Re: [PATCH 0/2] Allow parsing more than one memory node
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

----- On 17 Mar, 2020, at 08:35, Sam Ravnborg sam@ravnborg.org wrote:

> Hi Clement.
> 
> On Mon, Mar 16, 2020 at 12:00:06PM +0100, Clement Leger wrote:
>> Currently, barebox can only parse one memory node. This means that
>> all other memory nodes (with device_type == "memory") will be ignored
>> while parsing memory.
>> This patchset add a function of_probe_memory which will call
>> of_add_memory for each found memory node. Additionally, of_add_memory
>> has been modified to allow being called multiple times and correctly
>> add all memory banks.
>> 
>> Clement Leger (2):
>>   of: base: parse all available memory nodes
>>   of: base: allow of_add_memory to be called multiple times
> 
> With this order of the patches, after applying patch 1 the
> code will then use the last and not the first memory node.
> And only after the second patch it will work.
> 
> I think to improve bisectability the order of the two patches should be
> reversed.

Oh yes indeed ! I will send a V2 after others have commented it.

> 
> 	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
