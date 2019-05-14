Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSnl-0006p3-Qh
 for barebox@lists.infradead.org; Tue, 14 May 2019 08:29:19 +0000
References: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
 <20190514021954.11834-1-gneukum1@gmail.com>
 <f7c0782a-22df-9d1f-3699-de3cf220962d@mev.co.uk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <03cd78b8-74dd-9b78-c8fa-9fce756df101@pengutronix.de>
Date: Tue, 14 May 2019 10:28:41 +0200
MIME-Version: 1.0
In-Reply-To: <f7c0782a-22df-9d1f-3699-de3cf220962d@mev.co.uk>
Content-Language: en-US
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
Subject: Re: [PATCH] LICENSES: modify .gitignore files to be nonempty
To: Ian Abbott <abbotti@mev.co.uk>, Geordan Neukum <gneukum1@gmail.com>, barebox@lists.infradead.org

On 14/5/19 09:28, Ian Abbott wrote:
> On 14/05/2019 03:19, Geordan Neukum wrote:
>> The .gitignore files under the LICENSES/exceptions and LICENSES/other
>> directories cannot have a size of 0 or else they are subject to removal
>> by the make target 'distclean'. Modify the .gitignore files to
>> ignore all files except for themselves. These .gitignores can be
>> updated further or removed outright as new licenses are added to these
>> directories in the future.
>>
>> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
>> ---
>>   LICENSES/exceptions/.gitignore | 4 ++++
>>   LICENSES/other/.gitignore      | 4 ++++
>>   2 files changed, 8 insertions(+)
>>
>> diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
>> index e69de29bb..d5e7eacf3 100644
>> --- a/LICENSES/exceptions/.gitignore
>> +++ b/LICENSES/exceptions/.gitignore
>> @@ -0,0 +1,4 @@
>> +# Ignore everything in this directory
>> +*
>> +# Except for this file
>> +!.gitignore
>> diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
>> index e69de29bb..d5e7eacf3 100644
>> --- a/LICENSES/other/.gitignore
>> +++ b/LICENSES/other/.gitignore
>> @@ -0,0 +1,4 @@
>> +# Ignore everything in this directory
>> +*
>> +# Except for this file
>> +!.gitignore
>>
> 
> I may be missing something, but why not have just a comment line?
> 

One side effect of doing it this way, that it's more likely to remind,
whoever `git add`s files to these directories that the .gitignore needs to
be removed (unless they have aliased git add to git add -f..).

Personally, I am fine with both ways, but I would prefer the comment
to say something along the lines of:

	# Placeholder as upstream checkpatch.pl requires this directory to exist
	# This file can be removed when new files are added


Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
