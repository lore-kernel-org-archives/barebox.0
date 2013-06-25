Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UraxB-0005Vm-10
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 21:39:10 +0000
Received: by mail-ee0-f42.google.com with SMTP id c4so7164023eek.1
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 14:38:46 -0700 (PDT)
Message-ID: <51CA0DE1.30605@gmail.com>
Date: Tue, 25 Jun 2013 23:38:41 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-9-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130625194847.GL32299@pengutronix.de>
In-Reply-To: <20130625194847.GL32299@pengutronix.de>
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
Subject: Re: [PATCH 8/9] OF: base: convert of_add_memory to OF API
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/25/2013 09:48 PM, Sascha Hauer wrote:
> On Tue, Jun 25, 2013 at 11:20:46AM +0200, Sebastian Hesselbarth wrote:
>> Convert of_add_memory parsing to make use of of_address_to_resource
>> instead of parsing memory ranges itself. This makes some functions
>> dead code which are also removed.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>
> Haven't investigated further yet, but this one breaks my loco board
> with:

The check on the return value from of_address_to_resource in the while
loop is wrong and should be

while (!of_address_to_resource(...))

I'll update for a v2.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
