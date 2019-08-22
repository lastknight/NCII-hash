# NCII-hash

**NCII-hash** is an Open Source and shared list of hashes (and perceptual hashes) of **Non Consensual Intimate Images** to easly retrive and remove them from online services.
In addition to this a sample [NCII-Tool](/tool) is provided as a prototype to create hashes for a collection of images using different algorythms.

* **Non-Perceptual Hashes**
	* NCII-hash list using [MD5 algorithm](/lists/NCII-hash_md5.txt)
	* NCII-hash list using [RIPEMD-160 algorithm](/lists/NCII-hash_rmd160.txt)
	* NCII-hash list using [SHA1 algorithm](/lists/NCII-hash_sha1.txt)
	* NCII-hash list using [SHA256 algorithm](/lists/NCII-hash_sha265.txt)
	* NCII-hash list using [SHA386 algorithm](/lists/NCII-hash_sha386.txt)
	* NCII-hash list using [SHA512 algorithm](/lists/NCII-hash_sha512.txt)
* **Perceptual Hashes**
	* NCII-hash list using [pHash algorithm](/lists/NCII-hash_pHash.txt)
	
## What is NCII?

**NCII** is the acronym standing for **Non-Consensual Intimate Image**, a general term referring to an ample array of image-based abuses. As far as the definition goes, the problem comes in a variety of difference definition,s all with a slightlòy different connetation (`Revenge porn`, `Non-consensual porn`, `Non-consensual sexual/ nude/ intimate image sharing`, `Technology-facilitated violence`, `Intimate image abuse`, `Cyber exploitation`), but all related to the non-consensual taking, distribution, or threat to distribute, intimate, nude and/or sexual images.

When someone’s intimate images are shared without their permission it can be devastating. To protect victims, it’s long been our policy to help victims of abuses to report and obtain removal of non-consensual intimate images (sometimes referred to as revenge porn) when they’re reported to us.  
Most of our work is, though, continuous and repetitive work in reporting the same content again and again at the same platforms, sometime hundreds of time.  

## How were the samples acquired?

We **asked content providers to run [the tool](/tool) - or any equivalent script - before the removal**.  
We do not store - even temporarily - information and content of any kind except for **the reporting URLs** that get destroyed on removal.  
We **do not solicit images** and PLEASE **do not send images to us to be hashed** and part of this collection.

## What type of content is hashed?

The **NCII-hash** database contains a vast variety of NCII images (ani videos, although movies are not included in pHash list), from upskirts to revenge porn. Many of the images contained are referring to cases known (e.g. published in newspapers) to be representing minors.

## Which algorythms are you providing?

Hashed are provided in a vast array of Perceptual on Non-Perceptual hashes such as:

* **Non-Perceptual Hashes**
  * MD5
  * RIPEMD-160
  * SHA1
  * SHA256
  * SHA384
  * SHA512
* **Perceptual Hashes**
  * [pHash](http://phash.org)
* *Nice to have (not yet included)*
  * [ImgSeek](http://www.imgseek.net)
  * [BlockHash](http://blockhash.io)

## Where is the List hosted

You can download the latest list below or refer to the [GitHub directory](/lists) for commit date:

* **Non-Perceptual Hashes**
	* NCII-hash list using [MD5 algorithm](/lists/NCII-hash_md5.txt)
	* NCII-hash list using [RIPEMD-160 algorithm](/lists/NCII-hash_rmd160.txt)
	* NCII-hash list using [SHA1 algorithm](/lists/NCII-hash_sha1.txt)
	* NCII-hash list using [SHA256 algorithm](/lists/NCII-hash_sha265.txt)
	* NCII-hash list using [SHA386 algorithm](/lists/NCII-hash_sha386.txt)
	* NCII-hash list using [SHA512 algorithm](/lists/NCII-hash_sha512.txt)
* **Perceptual Hashes**
	* NCII-hash list using [pHash algorithm](/lists/NCII-hash_pHash.txt)

## I want to use it for removing content

Removal of content based on hashes and Perceptual Hashes is strongly frown upon by many.  
We suggest to use it to find the content and manually review it - according to your TOS and Legislation - and to better decide the actions to be taken.

## I want to contribute

**ATTENTION!!!**  
**PLEASE DO NOT SEND US ANY IMAGE TO BE HASHED. OF ANY KIND. NEVER. EVER. SERIOUSLY.**  

You can create your own hashes using the Ruby [NCII-tool](/tool) and use it on images you own and then contact us. Usage is pretty strightforward.

`mgpf$ ruby NCII-tool.rb -h`  
`Usage:`  
`   NCII-tool [-h] [-f filename] [-d directory]`  
`   -h, --help       Show this help.`  
`   -v, --version    Show the version number (0.1).`  
`   -f, --file.      The file to be hashed.`  
`   -f, --file.      The directory to be hashed.`  

Collection presently curated by:

* [Matteo G.P. Flora](https://mgpf.it) ([@lastknight](https://twitter.com/lastknight)): Adjunct Professor of Corporate Reputation & Storytelling at university of Pavia, Lecturer of Big Data and Analytics at Bicocca University in Milan, CEO The Fool. Hacker.

Contributions most welcome in the [GitHub page](https://github.com/lastknight/NCII-hash) or in mail via `mf {at} mgpf.it`.
