Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxS9-00042A-Sv
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 11:08:23 +0000
References: <1571932955-98554-1-git-send-email-r.karszniewicz@phytec.de>
 <9bc4633e-6f71-0c6c-988c-e8a1e11e713a@pengutronix.de>
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Message-ID: <f7e34c2e-c3af-f606-1f3f-4298d9e4d252@phytec.de>
Date: Fri, 25 Oct 2019 13:08:20 +0200
MIME-Version: 1.0
In-Reply-To: <9bc4633e-6f71-0c6c-988c-e8a1e11e713a@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] sandbox: add_image: mmap block devices
To: barebox@lists.infradead.org

On 10/24/19 6:07 PM, Ahmad Fatoum wrote:
> On 10/24/19 6:02 PM, Robert Karszniewicz wrote:
>> This makes it possible to mount block devices from the host machine,
>> which have been passed as arguments to --image
>>
>> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
>> ---
>>   arch/sandbox/os/common.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
>> index 86118822a..805ac8eef 100644
>> --- a/arch/sandbox/os/common.c
>> +++ b/arch/sandbox/os/common.c
>> @@ -39,6 +39,8 @@
>>   #include <signal.h>
>>   #include <sys/select.h>
>>   #include <sys/wait.h>
>> +#include <sys/ioctl.h>
>> +#include <linux/fs.h>
>>   /*
>>    * ...except the ones needed to connect with barebox
>>    */
>> @@ -260,6 +262,12 @@ static int add_image(char *str, char *devname_template, int *devname_number)
>>   	hf->size = s.st_size;
>>   	hf->devname = strdup(devname);
>>   
>> +	if (S_ISBLK(s.st_mode)) {
>> +		if (-1 == ioctl(fd, BLKGETSIZE64, &hf->size)) {
> 
> This looks out of place for barebox, the -1 should be on the right side.

Oh, right, sorry! I have a habit to put trivial- and constant-sized 
symbols to the left, to not hide them behind those long function calls, etc.

> 
>> +			perror("ioctl");
>> +			goto err_out;
>> +		}
>> +	}
>>   	hf->base = (unsigned long)mmap(NULL, hf->size,
>>   			PROT_READ | (readonly ? 0 : PROT_WRITE),
>>   			MAP_SHARED, fd, 0);
>>
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
